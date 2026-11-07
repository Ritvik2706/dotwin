# Stops Zebar and GlazeWM without leaving any window invisible. Used for games
# (relaunch-after-game.ps1) and Alt+Shift+E: don't quit GlazeWM any other way
# while windows are on hidden workspaces.
#   powershell -File stop-glazewm.ps1 [-Handles <hwnd,hwnd>]
# -Handles uncloaks those windows only, without stopping anything.
param([long[]]$Handles)

$GlazeCli = 'C:\Program Files\glzr.io\GlazeWM\cli\glazewm.exe'

# Runs the GlazeWM CLI and returns its output, or $null if it hasn't answered in
# time: with an error dialog open, GlazeWM accepts the connection and never replies.
function Invoke-GlazeCli([string]$Arguments) {
    $out = [IO.Path]::GetTempFileName()
    try {
        $process = Start-Process $GlazeCli $Arguments -WindowStyle Hidden -PassThru -RedirectStandardOutput $out
        if (-not $process.WaitForExit(3000)) {
            $process.Kill()
            return $null
        }
        return Get-Content $out -Raw
    } finally {
        Remove-Item $out -ErrorAction SilentlyContinue
    }
}

# wm-exit only restores windows on visible workspaces: the rest stay cloaked,
# running but invisible and unmanaged by the next GlazeWM. So note what GlazeWM
# manages first and uncloak it after, the way GlazeWM cloaked it. If it can't
# say, every cloaked app window is found instead. GlazeWM runs elevated, so the
# Stop-Process below only works from an admin shell.
$useHandles = [bool]$Handles
if (-not $useHandles) {
    $windows = Invoke-GlazeCli 'query windows'
    $Handles = [regex]::Matches([string]$windows, '"handle":(\d+)') |
        ForEach-Object { [long]$_.Groups[1].Value }

    Stop-Process -Name zebar -Force -ErrorAction SilentlyContinue
    $null = Invoke-GlazeCli 'command wm-exit'
    Wait-Process -Name glazewm -Timeout 5 -ErrorAction SilentlyContinue
    Stop-Process -Name glazewm -Force -ErrorAction SilentlyContinue
}

Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;

[ComImport, Guid("6D5140C1-7436-11CE-8034-00AA006009FA"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
interface IShellServiceProvider {
    [return: MarshalAs(UnmanagedType.IUnknown)] object QueryService(ref Guid service, ref Guid riid);
}

// Undocumented shell interfaces, the same ones GlazeWM uses. Unused slots keep the vtable order.
[ComImport, Guid("372E1D3B-38D3-42E4-A15B-8AB2B178F513"), InterfaceType(ComInterfaceType.InterfaceIsIInspectable)]
interface IApplicationView {
    int SetFocus(); int SwitchTo(); int TryInvokeBack(IntPtr callback); int GetThumbnailWindow(out IntPtr hwnd);
    int GetMonitor(out IntPtr monitor); int GetVisibility(out int visibility);
    [PreserveSig] int SetCloak(uint type, int flag);
}

[ComImport, Guid("1841C6D7-4F9D-42C0-AF41-8747538F10E5"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
interface IApplicationViewCollection {
    int GetViews(out IntPtr views); int GetViewsByZOrder(out IntPtr views);
    int GetViewsByAppUserModelId([MarshalAs(UnmanagedType.LPWStr)] string id, out IntPtr views);
    [PreserveSig] int GetViewForHwnd(IntPtr hwnd, out IApplicationView view);
}

public static class Windows {
    delegate bool EnumProc(IntPtr hwnd, IntPtr lParam);
    [DllImport("user32.dll")] static extern bool EnumWindows(EnumProc proc, IntPtr lParam);
    [DllImport("user32.dll")] static extern bool IsWindowVisible(IntPtr hwnd);
    [DllImport("user32.dll")] static extern IntPtr GetWindow(IntPtr hwnd, uint command);
    [DllImport("user32.dll")] static extern int GetWindowTextLength(IntPtr hwnd);
    [DllImport("user32.dll")] static extern int GetWindowLong(IntPtr hwnd, int index);
    [DllImport("user32.dll", CharSet = CharSet.Unicode)] static extern int GetClassName(IntPtr hwnd, System.Text.StringBuilder name, int max);
    [DllImport("dwmapi.dll")] static extern int DwmGetWindowAttribute(IntPtr hwnd, int attribute, out int value, int size);

    // Windows the shell cloaked, leaving out UWP frames: suspended apps keep
    // cloaked ones around, and showing those puts ghost windows on screen.
    public static long[] CloakedAppWindows() {
        var found = new System.Collections.Generic.List<long>();
        EnumWindows((hwnd, _) => {
            int cloaked;
            var name = new System.Text.StringBuilder(64);
            GetClassName(hwnd, name, 64);
            bool toolWindow = (GetWindowLong(hwnd, -20) & 0x80) != 0;
            if (IsWindowVisible(hwnd) && !toolWindow && GetWindow(hwnd, 4) == IntPtr.Zero && GetWindowTextLength(hwnd) > 0
                && DwmGetWindowAttribute(hwnd, 14, out cloaked, 4) == 0 && cloaked == 2
                && name.ToString() != "ApplicationFrameWindow" && name.ToString() != "Windows.UI.Core.CoreWindow")
                found.Add((long)hwnd);
            return true;
        }, IntPtr.Zero);
        return found.ToArray();
    }

    public static void Uncloak(long[] handles) {
        var shell = (IShellServiceProvider)Activator.CreateInstance(Type.GetTypeFromCLSID(new Guid("C2F03A33-21F5-47FA-B4BB-156362A2F239")));
        Guid id = typeof(IApplicationViewCollection).GUID;
        var views = (IApplicationViewCollection)shell.QueryService(ref id, ref id);
        foreach (long handle in handles) {
            IApplicationView view;
            if (views.GetViewForHwnd((IntPtr)handle, out view) == 0) view.SetCloak(1, 0);
        }
    }
}
'@
if (-not $useHandles -and -not $Handles) { $Handles = [Windows]::CloakedAppWindows() }
if ($Handles) { [Windows]::Uncloak($Handles) }
