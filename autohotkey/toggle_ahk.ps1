$ahkScript = "C:\Users\Ritvik\Documents\AutoHotkey\CapsEscSwap.ahk"
$proc = Get-Process -Name "AutoHotkey64","AutoHotkey" -ErrorAction SilentlyContinue | Select-Object -First 1
if ($proc) {
    Get-Process -Name "AutoHotkey64","AutoHotkey" -ErrorAction SilentlyContinue | Stop-Process -Force
} else {
    Start-Process $ahkScript
}
