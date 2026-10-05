; Bridge for the Zebar bar: query or toggle CapsEscSwap.ahk's taskbar hiding.
; Prints {"available":true,"hidden":true} to stdout.
;   AutoHotkey64.exe taskbar.ahk get|toggle
#Requires AutoHotkey v2.0
#NoTrayIcon

DetectHiddenWindows(true)
SetTitleMatchMode(2)

WM_TASKBAR := 0x8001
action := A_Args.Length ? A_Args[1] : "get"

try {
    reply := SendMessage(WM_TASKBAR, action = "toggle" ? 1 : 0, 0,, "CapsEscSwap.ahk ahk_class AutoHotkey",,,, 2000)
    if reply != 1 && reply != 2
        throw Error("no taskbar handler")   ; older CapsEscSwap.ahk without the message handler
    FileAppend('{"available":true,"hidden":' (reply = 1 ? "true" : "false") '}', "*")
} catch {
    ; Main script not running.
    FileAppend('{"available":false,"hidden":false}', "*")
}
