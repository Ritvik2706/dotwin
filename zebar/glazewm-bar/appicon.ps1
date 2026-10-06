# Prints a window's icon as base64 PNG (empty if none can be found).
# Used by the bar's focused-app indicator and open-apps island.
#   appicon.ps1 <windowHandle> <key>
# <key> names the app (the bar passes the process name, plus the title for
# UWP apps, which all share ApplicationFrameHost). Icons are cached on disk
# under %APPDATA%\zebar\ritvik-bar-icons\<key>.b64, so each app is only looked
# up once; delete that folder to refetch them.
#
# Looks where the Windows taskbar does, in order:
#   1. for UWP apps (hosted by ApplicationFrameHost), the app's own logo via
#      its AppUserModelID in shell:AppsFolder;
#   2. the icon the window itself sets (WM_GETICON) or its class icon, unless
#      it's Windows' stock default - apps that only set their icon at runtime
#      have a generic exe icon;
#   3. the icon of a Start Menu / desktop shortcut that launches the exe (some
#      installers only put the real icon there);
#   4. the executable's embedded icon.
param([long]$Handle, [string]$Key)
$ErrorActionPreference = 'Stop'

$cacheDir = Join-Path $env:APPDATA 'zebar\ritvik-bar-icons'
$cacheFile = Join-Path $cacheDir "$Key.b64"
if (Test-Path $cacheFile) {
    [IO.File]::ReadAllText($cacheFile)
    return
}

Add-Type -ReferencedAssemblies System.Drawing -TypeDefinition @'
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Text;

public static class WinIcon {
    [DllImport("user32.dll")] static extern IntPtr SendMessageTimeout(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam, uint flags, uint timeout, out IntPtr result);
    [DllImport("user32.dll", EntryPoint = "GetClassLongPtrW")] static extern IntPtr GetClassLongPtr(IntPtr hWnd, int index);
    [DllImport("user32.dll")] static extern uint GetWindowThreadProcessId(IntPtr hWnd, out uint pid);
    [DllImport("user32.dll")] static extern bool EnumChildWindows(IntPtr hWnd, EnumProc proc, IntPtr lParam);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)] static extern int GetClassName(IntPtr hWnd, StringBuilder sb, int max);
    [DllImport("kernel32.dll")] static extern IntPtr OpenProcess(uint access, bool inherit, uint pid);
    [DllImport("kernel32.dll")] static extern bool CloseHandle(IntPtr h);
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode)] static extern bool QueryFullProcessImageName(IntPtr h, uint flags, StringBuilder sb, ref uint size);
    [DllImport("kernel32.dll", CharSet = CharSet.Unicode)] static extern int GetApplicationUserModelId(IntPtr h, ref uint len, StringBuilder sb);
    [DllImport("shell32.dll", CharSet = CharSet.Unicode)] static extern int SHCreateItemFromParsingName(string path, IntPtr pbc, ref Guid riid, out IShellItemImageFactory item);
    [DllImport("user32.dll")] static extern IntPtr LoadIcon(IntPtr hInstance, IntPtr name);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)] static extern uint PrivateExtractIcons(string file, int index, int cx, int cy, IntPtr[] icons, uint[] ids, uint count, uint flags);
    [DllImport("user32.dll")] static extern bool DestroyIcon(IntPtr h);
    [DllImport("gdi32.dll")] static extern bool DeleteObject(IntPtr h);
    [DllImport("gdi32.dll")] static extern int GetObject(IntPtr h, int size, ref BITMAP bmp);
    delegate bool EnumProc(IntPtr hWnd, IntPtr lParam);

    [StructLayout(LayoutKind.Sequential)] struct BITMAP { public int type, width, height, widthBytes; public ushort planes, bitsPixel; public IntPtr bits; }
    [StructLayout(LayoutKind.Sequential)] struct SIZE { public int cx, cy; public SIZE(int x, int y) { cx = x; cy = y; } }

    [ComImport, Guid("bcc18b79-ba16-442f-80c4-8a59c30c463b"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    interface IShellItemImageFactory { [PreserveSig] int GetImage(SIZE size, int flags, out IntPtr hbmp); }

    const uint WM_GETICON = 0x7F, SMTO_ABORTIFHUNG = 0x2, PROCESS_QUERY_LIMITED_INFORMATION = 0x1000;
    const int GCLP_HICON = -14, GCLP_HICONSM = -34, SIIGBF_ICONONLY = 0x4;

    // Windows' stock "application" icon (IDI_APPLICATION), shared by every
    // window that never set one of its own.
    static readonly IntPtr StockIcon = LoadIcon(IntPtr.Zero, (IntPtr)32512);

    static IntPtr WindowIcon(IntPtr hWnd) {
        IntPtr found = RawWindowIcon(hWnd);
        return found == StockIcon ? IntPtr.Zero : found;
    }

    static IntPtr RawWindowIcon(IntPtr hWnd) {
        // ICON_BIG, then ICON_SMALL2 / ICON_SMALL.
        foreach (int type in new[] { 1, 2, 0 }) {
            IntPtr icon;
            if (SendMessageTimeout(hWnd, WM_GETICON, (IntPtr)type, IntPtr.Zero, SMTO_ABORTIFHUNG, 200, out icon) != IntPtr.Zero && icon != IntPtr.Zero)
                return icon;
        }
        IntPtr cls = GetClassLongPtr(hWnd, GCLP_HICON);
        return cls != IntPtr.Zero ? cls : GetClassLongPtr(hWnd, GCLP_HICONSM);
    }

    static Bitmap FromIcon(IntPtr icon) {
        using (Icon i = Icon.FromHandle(icon)) return i.ToBitmap();
    }

    // UWP windows are frames owned by ApplicationFrameHost; the app itself
    // runs in a child CoreWindow from another process.
    static uint UwpProcess(IntPtr frame, uint framePid) {
        uint found = 0;
        EnumChildWindows(frame, (child, _) => {
            uint pid;
            GetWindowThreadProcessId(child, out pid);
            if (pid != framePid) { found = pid; return false; }
            return true;
        }, IntPtr.Zero);
        return found;
    }

    static string ProcessInfo(uint pid, bool aumid) {
        IntPtr h = OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, false, pid);
        if (h == IntPtr.Zero) return null;
        try {
            var sb = new StringBuilder(1024);
            uint len = (uint)sb.Capacity;
            if (aumid) return GetApplicationUserModelId(h, ref len, sb) == 0 ? sb.ToString() : null;
            return QueryFullProcessImageName(h, 0, sb, ref len) ? sb.ToString() : null;
        } finally { CloseHandle(h); }
    }

    // Shell image (keeps alpha: the HBITMAP is a 32bpp top-down DIB).
    static Bitmap ShellImage(string parsingName, int size) {
        Guid iid = typeof(IShellItemImageFactory).GUID;
        IShellItemImageFactory factory;
        if (SHCreateItemFromParsingName(parsingName, IntPtr.Zero, ref iid, out factory) != 0) return null;
        IntPtr hbmp;
        if (factory.GetImage(new SIZE(size, size), SIIGBF_ICONONLY, out hbmp) != 0) return null;
        try {
            var bm = new BITMAP();
            GetObject(hbmp, Marshal.SizeOf(bm), ref bm);
            if (bm.bitsPixel != 32 || bm.bits == IntPtr.Zero) return Image.FromHbitmap(hbmp);
            var bmp = new Bitmap(bm.width, bm.height, PixelFormat.Format32bppPArgb);
            var data = bmp.LockBits(new Rectangle(0, 0, bm.width, bm.height), ImageLockMode.WriteOnly, PixelFormat.Format32bppPArgb);
            var row = new byte[bm.widthBytes];
            for (int y = 0; y < bm.height; y++) {
                Marshal.Copy(bm.bits + y * bm.widthBytes, row, 0, row.Length);
                // Bottom-up DIB: first row in memory is the bottom of the image.
                Marshal.Copy(row, 0, data.Scan0 + (bm.height - 1 - y) * data.Stride, Math.Min(row.Length, data.Stride));
            }
            bmp.UnlockBits(data);
            return bmp;
        } finally { DeleteObject(hbmp); }
    }

    public static string ExePath(long handle) {
        uint pid;
        return GetWindowThreadProcessId((IntPtr)handle, out pid) == 0 ? null : ProcessInfo(pid, false);
    }

    // Icon from a "file,index" location (exe, dll or ico), as shortcuts store it.
    public static Bitmap FromLocation(string file, int index) {
        var icons = new IntPtr[1];
        var ids = new uint[1];
        if (PrivateExtractIcons(file, index, 32, 32, icons, ids, 1, 0) == 0 || icons[0] == IntPtr.Zero) return null;
        try { return FromIcon(icons[0]); } finally { DestroyIcon(icons[0]); }
    }

    // Steps 1 and 2; null means fall back to shortcut and exe icons.
    public static Bitmap Get(long handle) {
        IntPtr hWnd = (IntPtr)handle;
        uint pid;
        if (GetWindowThreadProcessId(hWnd, out pid) == 0) return null;
        string exe = ProcessInfo(pid, false);

        if (exe != null && exe.EndsWith("\\ApplicationFrameHost.exe", StringComparison.OrdinalIgnoreCase)) {
            uint app = UwpProcess(hWnd, pid);
            string aumid = app != 0 ? ProcessInfo(app, true) : null;
            if (aumid != null) {
                Bitmap logo = ShellImage("shell:AppsFolder\\" + aumid, 32);
                if (logo != null) return logo;
            }
        }

        IntPtr icon = WindowIcon(hWnd);
        return icon != IntPtr.Zero ? FromIcon(icon) : null;
    }
}
'@

function Get-ShortcutIcon([string]$Exe) {
    $dirs = "$env:APPDATA\Microsoft\Windows\Start Menu", "$env:ProgramData\Microsoft\Windows\Start Menu",
            [Environment]::GetFolderPath('Desktop'), "$env:PUBLIC\Desktop"
    $shell = New-Object -ComObject WScript.Shell
    foreach ($lnk in Get-ChildItem $dirs -Recurse -Filter *.lnk -ErrorAction SilentlyContinue) {
        $shortcut = $shell.CreateShortcut($lnk.FullName)
        if ($shortcut.TargetPath -ne $Exe) { continue }
        $file, $index = $shortcut.IconLocation -split ',(?=-?\d+$)'
        if (-not $file) { $file = $Exe }
        $icon = [WinIcon]::FromLocation([Environment]::ExpandEnvironmentVariables($file), [int]$index)
        if ($icon) { return $icon }
    }
}

$bitmap = [WinIcon]::Get($Handle)
if (-not $bitmap) {
    $exe = [WinIcon]::ExePath($Handle)
    if (-not $exe) { return }
    $bitmap = Get-ShortcutIcon $exe
    if (-not $bitmap) { $bitmap = ([System.Drawing.Icon]::ExtractAssociatedIcon($exe)).ToBitmap() }
}
$stream = New-Object IO.MemoryStream
$bitmap.Save($stream, [System.Drawing.Imaging.ImageFormat]::Png)
$base64 = [Convert]::ToBase64String($stream.ToArray())
$null = New-Item -ItemType Directory -Force $cacheDir
[IO.File]::WriteAllText($cacheFile, $base64)
$base64
