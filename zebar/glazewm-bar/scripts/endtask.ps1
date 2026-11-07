# Force-kills the process that owns a window, like Task Manager's "End task".
# Used by the bar's taskbar (right-click an app -> End task); GlazeWM reports
# window handles but not PIDs, so the PID is looked up from the handle.
#   endtask.ps1 <windowHandle>
param([long]$Handle)
$ErrorActionPreference = 'Stop'

Add-Type -Namespace Win32 -Name User32 -MemberDefinition @'
[DllImport("user32.dll")]
public static extern uint GetWindowThreadProcessId(IntPtr hWnd, out uint processId);
'@

$procId = [uint32]0
$null = [Win32.User32]::GetWindowThreadProcessId([IntPtr]$Handle, [ref]$procId)
if ($procId -eq 0) { throw "No process owns window $Handle" }
Stop-Process -Id $procId -Force
