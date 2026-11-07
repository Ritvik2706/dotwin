; Bridge for the Zebar bar: read or step CapsEscSwap.ahk's monitor brightness.
; Prints {"available":true,"level":60} to stdout.
;   AutoHotkey64.exe brightness.ahk get|up|down
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

WM_BRIGHTNESS := 0x8002
action := A_Args.Length ? A_Args[1] : "get"

try {
    wParam := action = "up" ? 1 : action = "down" ? 2 : 0
    reply := SendMessage(WM_BRIGHTNESS, wParam, 0,, "CapsEscSwap.ahk ahk_class AutoHotkey",,,, 2000)
    if reply < 1 || reply > 101
        throw Error("no brightness")   ; no DDC/CI monitor, or an older CapsEscSwap.ahk
    FileAppend('{"available":true,"level":' (reply - 1) '}', "*")
} catch {
    ; Main script not running, or nothing to report.
    FileAppend('{"available":false,"level":null}', "*")
}
