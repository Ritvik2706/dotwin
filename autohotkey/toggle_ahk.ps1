# Alt+F8: stops CapsEscSwap.ahk, or starts it if it isn't running. It's asked to
# quit rather than killed, so it removes its tray icon and restores the taskbar.
$dir = 'C:\Users\Ritvik\Documents\AutoHotkey'
$running = Get-CimInstance Win32_Process -Filter "Name='AutoHotkey64.exe'" |
    Where-Object { $_.CommandLine -match 'CapsEscSwap\.ahk' }
if ($running) {
    Start-Process 'C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe' -ArgumentList "`"$dir\taskbar.ahk`" quit" -Wait
} else {
    Start-Process "$dir\CapsEscSwap.ahk"
}
