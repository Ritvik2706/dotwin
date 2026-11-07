# Prints 1 if a window is visible, 0 if it's hidden or gone. GlazeWM doesn't notice
# a window hiding itself while on a hidden workspace, so the bar asks here after
# closing one (close-to-tray apps hide rather than quit).
#   windowvisible.ps1 <windowHandle>
param([long]$Handle)
$ErrorActionPreference = 'Stop'

Add-Type -Namespace Win32 -Name User32Visible -MemberDefinition @'
[DllImport("user32.dll")]
public static extern bool IsWindowVisible(IntPtr hWnd);
'@

if ([Win32.User32Visible]::IsWindowVisible([IntPtr]$Handle)) { '1' } else { '0' }
