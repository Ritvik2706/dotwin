; ── GlazeWM: CLI helpers, restart — Alt+F9 ───────────────

GLAZE_QUERY_TIMEOUT_S := 3

; Raw JSON from `glazewm query <what>`, or "" if it failed or timed out.
; Hidden Run + temp file, not WScript.Shell.Exec: Exec can pop a Windows
; Terminal window, which would then show up as an open app.
GlazeQuery(what) {
    tmp := A_Temp "\glazewm-" what "-" A_TickCount ".json"
    out := ""
    try {
        Run(A_ComSpec ' /c ""' GLAZE_CLI '" query ' what ' > "' tmp '""',, "Hide", &pid)
        if ProcessWaitClose(pid, GLAZE_QUERY_TIMEOUT_S)
            ProcessClose(pid)   ; returns the PID of a process still running
        else
            out := FileRead(tmp)
    }
    try FileDelete(tmp)
    return out
}

; Set of the window handles GlazeWM manages (handle → true).
GetGlazeWindowHandles() {
    handles := Map()
    out := GlazeQuery("windows")
    pos := 1
    while pos := RegExMatch(out, '"handle":(\d+)', &m, pos) {
        handles[Integer(m[1])] := true
        pos += m.Len
    }
    return handles
}

; Through stop-glazewm.ps1, never by killing the process: that leaves windows on
; hidden workspaces invisible. GlazeWM starts Zebar again itself. Also how to
; start GlazeWM again after Alt+Shift+E, since it hides the taskbar again too.
!F9:: {
    if !ShouldRemap()
        return
    Run('powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -WindowStyle Hidden -File "'
        A_ScriptDir '\stop-glazewm.ps1" -NoGather',, "Hide", &pid)
    ProcessWaitClose(pid, 15)
    ; stop-glazewm.ps1 gives up waiting after 5 s. Starting a second copy over one
    ; still exiting opens GlazeWM's "Another instance is already running" dialog.
    if GlazeWmRunning() && !WaitGlazeWmExit(5) {
        TrayTip("GlazeWM didn't quit, so it wasn't restarted. If it's hung, run from an admin shell:`nStop-Process -Name glazewm,glazewm-watcher -Force", "GlazeWM", 3)
        return
    }
    Run(GLAZE_EXE)
    ; Alt+Shift+E brings the taskbar back for plain Windows; GlazeWM is back now.
    if !taskbarHidden
        SetTaskbarHidden(true)
    TrayTip("GlazeWM restarted", "GlazeWM", 1)
}

; The window manager, not its CLI: both are called glazewm.exe.
GlazeWmRunning() {
    return !!FindProcessEntry((pid, name) => name = "glazewm.exe" && !InStr(ProcessPathOf(pid), "\cli\"))
}

WaitGlazeWmExit(seconds) {
    deadline := A_TickCount + seconds * 1000
    while GlazeWmRunning() {
        if A_TickCount > deadline
            return false
        Sleep(250)
    }
    return true
}

; Full path of a process, or "" if it can't be read. GlazeWM is elevated, but
; PROCESS_QUERY_LIMITED_INFORMATION is still allowed for it.
ProcessPathOf(pid) {
    static PROCESS_QUERY_LIMITED_INFORMATION := 0x1000
    h := DllCall("OpenProcess", "UInt", PROCESS_QUERY_LIMITED_INFORMATION, "Int", 0, "UInt", pid, "Ptr")
    if !h
        return ""
    buf := Buffer(1040), size := 520
    ok := DllCall("QueryFullProcessImageNameW", "Ptr", h, "UInt", 0, "Ptr", buf, "UInt*", &size)
    DllCall("CloseHandle", "Ptr", h)
    return ok ? StrGet(buf, size, "UTF-16") : ""
}

; ── Mouse wheel, like niri's Mod+Wheel ──────────────────
; Alt+Wheel moves the focus left/right (across monitors at the edge) and
; Alt+Shift+Wheel walks the workspaces. One GlazeWM CLI run per step, not
; waited on; WHEEL_COOLDOWN_MS (niri's cooldown-ms) stops a flick of the wheel
; from skipping several. While GlazeWM is paused (Alt+\) they do nothing.
WHEEL_COOLDOWN_MS := 150

GlazeCommand(command) {
    try Run('"' GLAZE_CLI '" command ' command,, "Hide")
}

WheelGlaze(command) {
    static last := 0
    if A_TickCount - last < WHEEL_COOLDOWN_MS
        return
    last := A_TickCount
    GlazeCommand(command)
}

#HotIf ShouldRemap()
!WheelUp::    WheelGlaze("focus --direction left")
!WheelDown::  WheelGlaze("focus --direction right")
!+WheelUp::   WheelGlaze("focus --prev-workspace")
!+WheelDown:: WheelGlaze("focus --next-workspace")
#HotIf
