# NVIDIA digital vibrance, display gamma and monitor brightness for a game, and
# a centre-dot crosshair drawn over it. All of it happens in the display pipeline or the monitor, after the game's
# frame is finished, so none of it costs frame rate.
# relaunch-after-game.ps1 dot-sources this for the GameDisplay class.
# Run by hand to undo a mode, vibrance or gamma that got left behind:
#   powershell -File game-display.ps1 -Restore
# or to try a gamma, shadow lift and contrast while the game is open (1 is normal
# for each; -Restore undoes it):
#   powershell -File game-display.ps1 -Gamma 1.1 -Shadows 1.5 -Contrast 1.2
param([switch]$Restore, [double]$Gamma = 1, [double]$Shadows = 1, [double]$Contrast = 1)

Add-Type -ReferencedAssemblies System.Windows.Forms, System.Drawing -TypeDefinition @'
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows.Forms;

public static class GameDisplay {
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    struct DEVMODE {
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] public string dmDeviceName;
        public short dmSpecVersion, dmDriverVersion, dmSize, dmDriverExtra;
        public int dmFields, dmPositionX, dmPositionY, dmDisplayOrientation, dmDisplayFixedOutput;
        public short dmColor, dmDuplex, dmYResolution, dmTTOption, dmCollate;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)] public string dmFormName;
        public short dmLogPixels;
        public int dmBitsPerPel, dmPelsWidth, dmPelsHeight, dmDisplayFlags, dmDisplayFrequency;
        public int dmICMMethod, dmICMIntent, dmMediaType, dmDitherType, dmReserved1, dmReserved2;
        public int dmPanningWidth, dmPanningHeight;
    }

    // The registry's mode is the normal one; a game's fullscreen mode never writes it.
    const int ENUM_CURRENT_SETTINGS = -1, ENUM_REGISTRY_SETTINGS = -2;
    const int WM_DISPLAYCHANGE = 0x7E;

    // A null device is the primary monitor.
    [DllImport("user32.dll")]
    static extern bool EnumDisplaySettings(string device, int mode, ref DEVMODE m);
    [DllImport("user32.dll", EntryPoint = "ChangeDisplaySettingsEx")]
    static extern int ResetDisplaySettings(string device, IntPtr m, IntPtr hwnd, int flags, IntPtr param);

    static DEVMODE Settings(int which) {
        DEVMODE m = new DEVMODE();
        m.dmSize = (short)Marshal.SizeOf(typeof(DEVMODE));
        EnumDisplaySettings(null, which, ref m);
        return m;
    }

    static DEVMODE Current() { return Settings(ENUM_CURRENT_SETTINGS); }

    public static string Mode() {
        DEVMODE m = Current();
        return m.dmPelsWidth + "x" + m.dmPelsHeight + " @ " + m.dmDisplayFrequency + " Hz";
    }

    // Back to the registry's mode, for a mode left behind.
    public static void RestoreMode() {
        ResetDisplaySettings(null, IntPtr.Zero, IntPtr.Zero, 0, IntPtr.Zero);
    }

    // Fullscreen games switch the display mode (on start and on every
    // alt-tab), which can put the default gamma ramp back.
    class GammaKeeper : NativeWindow {
        protected override void WndProc(ref Message m) {
            base.WndProc(ref m);
            if (m.Msg == WM_DISPLAYCHANGE) ReapplyGamma();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    struct BLENDFUNCTION { public byte BlendOp, BlendFlags, SourceConstantAlpha, AlphaFormat; }

    [DllImport("user32.dll")]
    static extern bool UpdateLayeredWindow(IntPtr hwnd, IntPtr dstDc, IntPtr dstPos, ref Size size,
        IntPtr srcDc, ref Point srcPos, int colorKey, ref BLENDFUNCTION blend, int flags);
    [DllImport("user32.dll")]
    static extern bool SetWindowPos(IntPtr hwnd, IntPtr after, int x, int y, int w, int h, uint flags);
    [DllImport("user32.dll")] static extern IntPtr GetDC(IntPtr hwnd);
    [DllImport("user32.dll")] static extern int ReleaseDC(IntPtr hwnd, IntPtr dc);
    [DllImport("gdi32.dll")] static extern IntPtr CreateCompatibleDC(IntPtr dc);
    [DllImport("gdi32.dll")] static extern IntPtr SelectObject(IntPtr dc, IntPtr obj);
    [DllImport("gdi32.dll")] static extern bool DeleteObject(IntPtr obj);
    [DllImport("gdi32.dll")] static extern bool DeleteDC(IntPtr dc);

    delegate void WinEventProc(IntPtr hook, uint winEvent, IntPtr hwnd, int idObject, int idChild, uint thread, uint time);
    [DllImport("user32.dll")]
    static extern IntPtr SetWinEventHook(uint eventMin, uint eventMax, IntPtr module, WinEventProc proc,
        uint pid, uint thread, uint flags);
    [DllImport("user32.dll")] static extern bool UnhookWinEvent(IntPtr hook);
    [DllImport("user32.dll")] static extern IntPtr GetForegroundWindow();
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr hwnd, out uint pid);
    // This range is the focus changes, Alt+Tab and minimise / restore, which
    // doesn't always come with a focus change of its own.
    const uint EVENT_SYSTEM_FOREGROUND = 0x3, EVENT_SYSTEM_MINIMIZEEND = 0x17, WINEVENT_OUTOFCONTEXT = 0;
    static WinEventProc foregroundProc;   // referenced here so it's never collected

    // By name from the process list, which works when an anti-cheat denies
    // opening the game's process.
    static bool IsGameWindow(IntPtr hwnd, string[] gameNames) {
        try {
            uint pid;
            GetWindowThreadProcessId(hwnd, out pid);
            string name = Process.GetProcessById((int)pid).ProcessName;
            return Array.Exists(gameNames, g => string.Equals(g, name, StringComparison.OrdinalIgnoreCase));
        } catch (Exception) {
            return false;
        }
    }

    // A dot with a black outline at the centre of the screen: a window just the
    // size of the dot, always on top, that the mouse passes through. It's drawn
    // once per resolution and Windows keeps the picture, so it costs nothing
    // while it sits there. It re-centres itself when the resolution changes, and
    // is only on screen while the game has the focus. It exists only while the
    // crosshair is switched on.
    class Crosshair : NativeWindow {
        const int WS_POPUP = unchecked((int)0x80000000);
        const int WS_EX_LAYERED = 0x80000, WS_EX_TRANSPARENT = 0x20, WS_EX_TOPMOST = 0x8;
        const int WS_EX_TOOLWINDOW = 0x80, WS_EX_NOACTIVATE = 0x08000000;
        const uint SWP_NOSIZE = 0x1, SWP_NOACTIVATE = 0x10, SWP_SHOWWINDOW = 0x40, SWP_HIDEWINDOW = 0x80;
        const int ULW_ALPHA = 2;
        static readonly IntPtr HWND_TOPMOST = new IntPtr(-1);

        readonly double dot, outline;
        readonly Color color;
        int width, height, drawnWidth, drawnHeight;
        public bool GameFocused;

        public Crosshair(double dot, double outline, Color color) {
            this.dot = dot;
            this.outline = outline;
            this.color = color;
            CreateParams cp = new CreateParams();
            cp.Style = WS_POPUP;
            cp.ExStyle = WS_EX_LAYERED | WS_EX_TRANSPARENT | WS_EX_TOPMOST | WS_EX_TOOLWINDOW | WS_EX_NOACTIVATE;
            CreateHandle(cp);
            Place();
        }

        // The sizes are in the monitor's own pixels. A stretched mode's pixels
        // aren't square on the monitor, so there the dot is drawn as the ellipse
        // that the stretch turns back into a circle of the same size.
        void Draw(DEVMODE mode) {
            DEVMODE normal = Settings(ENUM_REGISTRY_SETTINGS);
            double sx = (double)mode.dmPelsWidth / normal.dmPelsWidth;
            double sy = (double)mode.dmPelsHeight / normal.dmPelsHeight;
            double full = dot + 2 * outline;
            // Even sizes, so the window's centre is exactly the screen's.
            width = 2 * (int)Math.Ceiling(full * sx / 2);
            height = 2 * (int)Math.Ceiling(full * sy / 2);

            using (Bitmap b = new Bitmap(width, height))
            using (Graphics g = Graphics.FromImage(b))
            using (Brush fill = new SolidBrush(color)) {
                g.SmoothingMode = SmoothingMode.AntiAlias;
                g.PixelOffsetMode = PixelOffsetMode.Half;
                FillEllipse(g, Brushes.Black, full * sx, full * sy);
                FillEllipse(g, fill, dot * sx, dot * sy);

                IntPtr screen = GetDC(IntPtr.Zero), mem = CreateCompatibleDC(screen);
                IntPtr bitmap = b.GetHbitmap(Color.FromArgb(0)), old = SelectObject(mem, bitmap);
                Size area = new Size(width, height);
                Point origin = Point.Empty;
                BLENDFUNCTION blend = new BLENDFUNCTION { SourceConstantAlpha = 255, AlphaFormat = 1 };
                UpdateLayeredWindow(Handle, screen, IntPtr.Zero, ref area, mem, ref origin, 0, ref blend, ULW_ALPHA);
                SelectObject(mem, old);
                DeleteObject(bitmap);
                DeleteDC(mem);
                ReleaseDC(IntPtr.Zero, screen);
            }
        }

        // Centred in the window.
        void FillEllipse(Graphics g, Brush brush, double w, double h) {
            g.FillEllipse(brush, (float)((width - w) / 2), (float)((height - h) / 2), (float)w, (float)h);
        }

        public void Place() {
            DEVMODE m = Current();
            if (m.dmPelsWidth != drawnWidth || m.dmPelsHeight != drawnHeight) {
                Draw(m);
                drawnWidth = m.dmPelsWidth;
                drawnHeight = m.dmPelsHeight;
            }
            SetWindowPos(Handle, HWND_TOPMOST, (m.dmPelsWidth - width) / 2, (m.dmPelsHeight - height) / 2, 0, 0,
                SWP_NOSIZE | SWP_NOACTIVATE | (GameFocused ? SWP_SHOWWINDOW : SWP_HIDEWINDOW));
        }

        protected override void WndProc(ref Message m) {
            base.WndProc(ref m);
            if (m.Msg == WM_DISPLAYCHANGE) Place();
        }
    }

    static NotifyIcon trayIcon;

    // A screen outline, filled while the crosshair is on.
    static Icon TrayIcon(bool filled) {
        using (Bitmap b = new Bitmap(16, 16))
        using (Graphics g = Graphics.FromImage(b)) {
            if (filled) g.FillRectangle(Brushes.White, 2, 3, 12, 8);
            g.DrawRectangle(Pens.White, 1, 2, 13, 9);
            g.FillRectangle(Brushes.White, 5, 13, 6, 1);
            return Icon.FromHandle(b.GetHicon());
        }
    }

    // A tray icon that shows and hides the crosshair (click it, or use its
    // menu): a dot of the given
    // diameter (in the monitor's pixels) and HTML colour with a black outline, or
    // none if dot is 0. dotShown says whether it starts switched on. It shows
    // only over the windows of gameNames (process names, no extension):
    // focus-change events say when, so nothing polls. While it's switched off
    // there is no crosshair window and no event hook at all. With dot 0 there's
    // no icon. The same thread keeps the gamma curve across mode changes. It
    // all lives on its own thread, so the caller can block.
    public static void StartTray(double dot, double outline, string dotColor, bool dotShown, string[] gameNames) {
        Thread t = new Thread(() => {
            NotifyIcon icon = new NotifyIcon();
            ToolStripMenuItem dotItem = new ToolStripMenuItem();
            Crosshair crosshair = null;
            IntPtr focusHook = IntPtr.Zero;
            System.Windows.Forms.Timer settle = null;
            Action refresh = () => {
                icon.Icon = TrayIcon(crosshair != null);
                icon.Text = "Crosshair " + (crosshair != null ? "on" : "off") + ". Click to switch";
                dotItem.Text = crosshair != null ? "Hide the crosshair" : "Show the crosshair";
            };

            Action onFocus = () => {
                if (crosshair == null) return;   // an event from just before it was switched off
                crosshair.GameFocused = IsGameWindow(GetForegroundWindow(), gameNames);
                crosshair.Place();
            };
            Action showDot = () => {
                crosshair = new Crosshair(dot, outline, ColorTranslator.FromHtml(dotColor));
                // The event can name a window that never gets the focus, or come
                // before the focus has settled (a window opening and closing at
                // once), so ask which window has it, now and once more shortly
                // after. The timer only runs for that one check.
                System.Windows.Forms.Timer timer = new System.Windows.Forms.Timer { Interval = 300 };
                timer.Tick += (s, e) => { timer.Stop(); onFocus(); };
                settle = timer;
                foregroundProc = (hook, winEvent, hwnd, idObject, idChild, thread, time) => {
                    if (crosshair == null) return;
                    onFocus();
                    timer.Stop();
                    timer.Start();
                };
                focusHook = SetWinEventHook(EVENT_SYSTEM_FOREGROUND, EVENT_SYSTEM_MINIMIZEEND, IntPtr.Zero,
                    foregroundProc, 0, 0, WINEVENT_OUTOFCONTEXT);
                onFocus();
            };
            // Leaves nothing behind: no window, no hook, no timer.
            Action hideDot = () => {
                UnhookWinEvent(focusHook);
                focusHook = IntPtr.Zero;
                settle.Dispose();
                settle = null;
                crosshair.DestroyHandle();
                crosshair = null;
            };

            if (dot > 0) {
                Action toggle = () => { if (crosshair == null) showDot(); else hideDot(); refresh(); };
                dotItem.Click += (s, e) => toggle();
                icon.ContextMenuStrip = new ContextMenuStrip();
                icon.ContextMenuStrip.Items.Add(dotItem);
                icon.ContextMenuStrip.Opening += (s, e) => refresh();
                icon.MouseClick += (s, e) => { if (e.Button == MouseButtons.Left) toggle(); };
                if (dotShown) showDot();
                refresh();
                icon.Visible = true;
                trayIcon = icon;
            }

            new GammaKeeper().CreateHandle(new CreateParams());
            Application.Run();
        });
        t.IsBackground = true;
        t.SetApartmentState(ApartmentState.STA);
        t.Start();
    }

    // Without this the icon stays in the tray until the mouse passes over it.
    public static void StopTray() {
        if (trayIcon != null) { trayIcon.Visible = false; trayIcon.Dispose(); trayIcon = null; }
    }

    // ── NVIDIA digital vibrance ──
    // NVAPI exports one function; the rest are looked up by id. These are the
    // same calls NVIDIA Control Panel's "Digital vibrance" slider makes.
    [DllImport("nvapi64.dll", EntryPoint = "nvapi_QueryInterface", CallingConvention = CallingConvention.Cdecl)]
    static extern IntPtr NvQuery(uint id);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)] delegate int NvInitialize();
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)] delegate int NvEnumDisplay(int index, out IntPtr display);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)] delegate int NvGetDvc(IntPtr display, uint output, ref DvcInfo info);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)] delegate int NvSetDvc(IntPtr display, uint output, int level);

    [StructLayout(LayoutKind.Sequential)]
    struct DvcInfo { public uint version; public int current, min, max; }

    static readonly Dictionary<IntPtr, int> normalLevels = new Dictionary<IntPtr, int>();

    static T Nv<T>(uint id) where T : class {
        IntPtr p = NvQuery(id);
        return p == IntPtr.Zero ? null : Marshal.GetDelegateForFunctionPointer(p, typeof(T)) as T;
    }

    // Percent as NVIDIA Control Panel shows it: 50 is normal, 100 the maximum.
    // Every display gets it. Does nothing without an NVIDIA driver.
    // Returns the number of displays set.
    public static int SetVibrance(int percent) {
        int count = 0;
        try {
            NvInitialize init = Nv<NvInitialize>(0x0150E828);
            NvEnumDisplay enumDisplay = Nv<NvEnumDisplay>(0x9ABDD40D);
            NvGetDvc getDvc = Nv<NvGetDvc>(0x4085DE45);
            NvSetDvc setDvc = Nv<NvSetDvc>(0x172409B4);
            if (init == null || enumDisplay == null || getDvc == null || setDvc == null || init() != 0) return 0;
            IntPtr display;
            for (int i = 0; enumDisplay(i, out display) == 0; i++) {
                DvcInfo info = new DvcInfo();
                info.version = (uint)Marshal.SizeOf(typeof(DvcInfo)) | 0x10000;
                if (getDvc(display, 0, ref info) != 0) continue;
                if (!normalLevels.ContainsKey(display)) normalLevels[display] = info.current;
                int level = info.min + (int)Math.Round((percent - 50) / 50.0 * (info.max - info.min));
                level = Math.Max(info.min, Math.Min(info.max, level));
                if (setDvc(display, 0, level) == 0) count++;
            }
        } catch (Exception) { }   // no NVIDIA driver
        return count;
    }

    // Back to what each display had before the first SetVibrance.
    public static void RestoreVibrance() {
        try {
            NvSetDvc setDvc = Nv<NvSetDvc>(0x172409B4);
            if (setDvc == null) return;
            foreach (KeyValuePair<IntPtr, int> d in normalLevels) setDvc(d.Key, 0, d.Value);
            normalLevels.Clear();
        } catch (Exception) { }
    }

    // ── Gamma ──
    // The display's gamma ramp: a lookup table the GPU applies to each pixel as
    // it sends it to the monitor. NVIDIA Control Panel's "Gamma" slider sets the
    // same table. The shadow lift is what gaming monitors call a black equalizer.
    // Contrast is an S-curve about mid-grey: it steepens the midtones, where most
    // of the picture is, by pushing darks darker and lights lighter.
    [DllImport("gdi32.dll")] static extern bool GetDeviceGammaRamp(IntPtr dc, [Out] ushort[] ramp);
    [DllImport("gdi32.dll")] static extern bool SetDeviceGammaRamp(IntPtr dc, ushort[] ramp);

    static ushort[] normalRamp;
    static double gamma = 1, shadows = 1, contrast = 1;
    // The shadow lift has faded out by this level (1 is white).
    const double SHADOW_KNEE = 0.5;

    // One entry of the ramp, for a level from 0 to 1. The shadow lift is a second
    // gamma that fades out smoothly towards the knee, so the bright half of the
    // picture keeps its contrast. The S-curve comes last.
    static double Curve(double x, double value, double lift, double s) {
        x = Math.Pow(x, 1 / value);
        double t = Math.Min(1, x / SHADOW_KNEE);
        double fade = 1 - t * t * (3 - 2 * t);
        x += fade * (Math.Pow(x, 1 / lift) - x);
        return x < 0.5 ? 0.5 * Math.Pow(2 * x, s) : 1 - 0.5 * Math.Pow(2 * (1 - x), s);
    }

    // Gamma is as NVIDIA Control Panel shows it: 1 is normal, and more lifts
    // shadows and midtones. Lift brightens only the dark half, most near black: 1
    // is none. Contrast is the midtones' slope: 1 is normal, more is punchier and
    // less washed out, at the cost of darker shadows. Black and white stay where
    // they are. Primary monitor. Returns false if Windows refuses the ramp.
    public static bool SetGamma(double value, double lift, double s) {
        IntPtr dc = GetDC(IntPtr.Zero);
        try {
            if (normalRamp == null) {
                ushort[] now = new ushort[768];
                if (GetDeviceGammaRamp(dc, now)) normalRamp = now;
            }
            ushort[] ramp = new ushort[768];   // red, green and blue, 256 each
            for (int i = 0; i < 256; i++)
                ramp[i] = ramp[256 + i] = ramp[512 + i] = (ushort)Math.Round(65535 * Curve(i / 255.0, value, lift, s));
            gamma = value;
            shadows = lift;
            contrast = s;
            return SetDeviceGammaRamp(dc, ramp);
        } finally {
            ReleaseDC(IntPtr.Zero, dc);
        }
    }

    static void ReapplyGamma() {
        if (gamma != 1 || shadows != 1 || contrast != 1) SetGamma(gamma, shadows, contrast);
    }

    // Back to the ramp from before the first SetGamma.
    public static void RestoreGamma() {
        gamma = shadows = contrast = 1;
        if (normalRamp == null) return;
        IntPtr dc = GetDC(IntPtr.Zero);
        SetDeviceGammaRamp(dc, normalRamp);
        ReleaseDC(IntPtr.Zero, dc);
        normalRamp = null;
    }

    // ── Monitor brightness ──
    // The monitor's own backlight setting over DDC/CI, like
    // modules/MonitorBrightness.ahk, which isn't running during a game.
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    struct PHYSICAL_MONITOR {
        public IntPtr handle;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)] public string description;
    }

    [DllImport("user32.dll")] static extern IntPtr MonitorFromWindow(IntPtr hwnd, uint flags);
    [DllImport("dxva2.dll")]
    static extern bool GetPhysicalMonitorsFromHMONITOR(IntPtr monitor, uint count, [Out] PHYSICAL_MONITOR[] monitors);
    [DllImport("dxva2.dll")] static extern bool DestroyPhysicalMonitors(uint count, PHYSICAL_MONITOR[] monitors);
    [DllImport("dxva2.dll")]
    static extern bool GetVCPFeatureAndVCPFeatureReply(IntPtr monitor, byte code, IntPtr type, out uint current, out uint max);
    [DllImport("dxva2.dll")] static extern bool SetVCPFeature(IntPtr monitor, byte code, uint value);
    const uint MONITOR_DEFAULTTOPRIMARY = 1;
    const byte VCP_BRIGHTNESS = 0x10;

    static int normalBrightness = -1;

    // Sets the primary monitor's brightness if it's lower than this; a negative
    // level only reads it. Returns what it was, or -1 if the monitor doesn't answer.
    static int Brightness(int level) {
        PHYSICAL_MONITOR[] m = new PHYSICAL_MONITOR[1];
        if (!GetPhysicalMonitorsFromHMONITOR(MonitorFromWindow(IntPtr.Zero, MONITOR_DEFAULTTOPRIMARY), 1, m)) return -1;
        try {
            uint current, max;
            if (!GetVCPFeatureAndVCPFeatureReply(m[0].handle, VCP_BRIGHTNESS, IntPtr.Zero, out current, out max)) return -1;
            if (level > current) SetVCPFeature(m[0].handle, VCP_BRIGHTNESS, (uint)Math.Min(level, max));
            return (int)current;
        } finally {
            DestroyPhysicalMonitors(1, m);
        }
    }

    // Never lowers it. Returns false if the monitor doesn't answer.
    public static bool RaiseBrightness(int level) {
        int was = Brightness(level);
        if (was >= 0 && was < level && normalBrightness < 0) normalBrightness = was;
        return was >= 0;
    }

    // Back to what it was before RaiseBrightness, if that raised it.
    public static void RestoreBrightness() {
        if (normalBrightness < 0) return;
        PHYSICAL_MONITOR[] m = new PHYSICAL_MONITOR[1];
        if (GetPhysicalMonitorsFromHMONITOR(MonitorFromWindow(IntPtr.Zero, MONITOR_DEFAULTTOPRIMARY), 1, m)) {
            SetVCPFeature(m[0].handle, VCP_BRIGHTNESS, (uint)normalBrightness);
            DestroyPhysicalMonitors(1, m);
        }
        normalBrightness = -1;
    }
}
'@

if ($Restore) {
    [GameDisplay]::RestoreMode()
    [void][GameDisplay]::SetVibrance(50)
    [void][GameDisplay]::SetGamma(1, 1, 1)
    [GameDisplay]::Mode()
} elseif ($Gamma -ne 1 -or $Shadows -ne 1 -or $Contrast -ne 1) {
    [GameDisplay]::SetGamma($Gamma, $Shadows, $Contrast)
}
