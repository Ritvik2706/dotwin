; Bridge for the Zebar bar: query or toggle CapsEscSwap.ahk's taskbar hiding.
; Prints {"available":true,"hidden":true} to stdout.
;   AutoHotkey64.exe taskbar.ahk get|toggle
;   AutoHotkey64.exe taskbar.ahk focus <hwnd>   (focus a window the way a taskbar click does)
;   AutoHotkey64.exe taskbar.ahk quit           (quit it normally, so it cleans up: toggle_ahk.ps1)
#Requires AutoHotkey v2.0
#NoTrayIcon
; Zebar can start a new run before the last one exits; without this, AutoHotkey's
; "already running, replace it?" prompt blocks each run forever and they pile up.
#SingleInstance Off
; Any error ends the run. A write to a closed stdout (Zebar quit mid-run) would
; otherwise show an unanswered error dialog, and the process would stay forever.
OnError((*) => ExitApp(1))

DetectHiddenWindows(true)
SetTitleMatchMode(2)

WM_TASKBAR := 0x8001
action := A_Args.Length ? A_Args[1] : "get"

try {
    wParam := action = "toggle" ? 1 : action = "focus" ? 2 : action = "quit" ? 3 : 0
    lParam := action = "focus" && A_Args.Length > 1 ? Integer(A_Args[2]) : 0
    reply := SendMessage(WM_TASKBAR, wParam, lParam,, "CapsEscSwap.ahk ahk_class AutoHotkey",,,, 2000)
    if reply != 1 && reply != 2
        throw Error("no taskbar handler")   ; older CapsEscSwap.ahk without the message handler
    FileAppend('{"available":true,"hidden":' (reply = 1 ? "true" : "false") '}', "*")
} catch {
    ; Main script not running.
    FileAppend('{"available":false,"hidden":false}', "*")
}
