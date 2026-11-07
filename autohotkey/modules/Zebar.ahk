; ── Zebar: restart — Alt+F7, and re-dock after display changes ──
; A resolution change or Explorer restart drops
; the bar's reserved strip, so GlazeWM tiles under it. 3 s after things
; settle, Zebar is restarted if the primary work area no longer starts
; below the monitor top. Games don't come through here: Zebar quits with them
; and starts fresh afterwards (AntiCheatGames.ahk).

StartZebarDockWatch() {
    OnMessage(WM_DISPLAYCHANGE,  (*) => ScheduleZebarDockCheck())
    OnMessage(WM_TASKBARCREATED, (*) => ScheduleZebarDockCheck())
}

!F7:: {
    if ShouldRemap()
        RestartZebar()
}

RestartZebar() {
    while ProcessExist("zebar.exe") {
        ProcessClose("zebar.exe")
        if !ProcessWaitClose("zebar.exe", 3)
            break
    }
    Sleep(300)
    Run(ZEBAR_EXE)
}

ScheduleZebarDockCheck() {
    SetTimer(CheckZebarDock, -3000)   ; re-arming resets the delay (debounce)
}

CheckZebarDock() {
    if !ProcessExist("zebar.exe")
        return
    primary := MonitorGetPrimary()
    MonitorGet(primary,, &monTop)
    MonitorGetWorkArea(primary,, &workTop)
    if workTop = monTop
        RestartZebar()
}
