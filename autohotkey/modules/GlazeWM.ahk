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
; hidden workspaces invisible. GlazeWM starts Zebar again itself.
!F9:: {
    if !ShouldRemap()
        return
    Run('powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -WindowStyle Hidden -File "'
        A_ScriptDir '\stop-glazewm.ps1"',, "Hide", &pid)
    ProcessWaitClose(pid, 15)
    Run(GLAZE_EXE)
    TrayTip("GlazeWM restarted", "GlazeWM", 1)
}
