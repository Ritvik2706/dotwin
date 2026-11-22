; ── Windows taskbar: hidden (Zebar replaces it) — Win+F4 ──
; While "hidden" the taskbar is on auto-hide, which releases its reserved
; strip (so GlazeWM tiles up to the bottom edge), and its windows are hidden
; too, so nothing slides up at the bottom edge. Explorer shows the taskbar
; again by itself (Start opening, an app asking for attention, a display
; change); a WinEvent hook on Explorer's "window shown" events hides it again
; at once, so nothing polls. Start is kept out of the way: a lone Win tap
; doesn't open it (Win+key combos still work); the bar's start button opens
; it instead (taskbar.ahk start). Win+F4 or the Zebar start-button menu
; (through taskbar.ahk, WM_TASKBAR) brings the taskbar back, always on top.
; Restored on script exit.

; Explorer's taskbars only: Zebar owns a hidden, blank Shell_TrayWnd of its
; own (for tray icons), which must never be shown.
TASKBAR_WINDOWS := ["ahk_class Shell_TrayWnd ahk_exe explorer.exe"
                 , "ahk_class Shell_SecondaryTrayWnd ahk_exe explorer.exe"]
taskbarHidden   := true
taskbarShowHook     := 0
taskbarShowCallback := 0

; WM_APP+1 from taskbar.ahk: wParam 0 = query, 1 = toggle, 2 = focus the
; window lParam the way a taskbar click does, 3 = quit the script, 4 = open
; Start, 5 = show the taskbar (GlazeWM quit: stop-glazewm.ps1). Replies 1 when the taskbar is hidden, 2 when always on top.
WM_TASKBAR := 0x8001

StartTaskbarHiding() {
    OnMessage(WM_TASKBAR, OnTaskbarMessage)
    ; A restarted Explorer has new taskbar windows, in a new process.
    OnMessage(WM_TASKBARCREATED, (*) => SetTimer(ReapplyTaskbarHidden, -1000))
    SetTaskbarHidden(true)
    OnExit(RestoreTaskbarOnExit)
}

#F4:: ToggleTaskbar()

; Masking the Win release with an unassigned key stops Start from opening.
#HotIf taskbarHidden
~LWin::Send("{Blind}{vkE8}")
~RWin::Send("{Blind}{vkE8}")
#HotIf

; Show the taskbar again when the script exits, except when it quits for an
; anti-cheat game (AntiCheatGames.ahk): then it stays hidden. Not on a
; reload either: the new instance hides it at once, and in between GlazeWM would
; re-tile every window around it.
RestoreTaskbarOnExit(reason, code) {
    WatchTaskbarShown(false)
    if code != EXIT_FOR_GAME && reason != "Reload" && reason != "Single"
        SetTaskbarHidden(false)
}

ToggleTaskbar() {
    SetTaskbarHidden(!taskbarHidden)
    TrayTip(taskbarHidden ? "Taskbar hidden" : "Taskbar shown", "Windows Taskbar", 1)
}

SetTaskbarHidden(hide) {
    global taskbarHidden := hide
    SetTaskbarAutoHide(hide)
    WatchTaskbarShown(hide)
    ShowTaskbarWindows(!hide)
    SetTrayCheck(TRAY_TASKBAR, hide)
}

ReapplyTaskbarHidden() {
    if taskbarHidden
        SetTaskbarHidden(true)
}

; Explorer's taskbar windows, hidden ones included.
TaskbarWindows() {
    prev := DetectHiddenWindows(true)
    found := []
    for taskbar in TASKBAR_WINDOWS
        for hwnd in WinGetList(taskbar)
            found.Push(hwnd)
    DetectHiddenWindows(prev)
    return found
}

SetTaskbarAutoHide(on) {
    taskbars := TaskbarWindows()
    if !taskbars.Length
        return
    ; APPBARDATA (x64): cbSize@0, hWnd@8, uCallbackMessage@16, uEdge@20, rc@24, lParam@40
    abd := Buffer(48, 0)
    NumPut("UInt", abd.Size, abd, 0)
    NumPut("Ptr", taskbars[1], abd, 8)
    NumPut("Ptr", on ? 0x1 : 0x2, abd, 40)                        ; ABS_AUTOHIDE : ABS_ALWAYSONTOP
    DllCall("Shell32\SHAppBarMessage", "UInt", 0xA, "Ptr", abd)   ; ABM_SETSTATE
}

ShowTaskbarWindows(show) {
    for hwnd in TaskbarWindows()
        DllCall("ShowWindow", "Ptr", hwnd, "Int", show ? 8 : 0)   ; SW_SHOWNA : SW_HIDE
}

; While on, every "window shown" event from the taskbar's Explorer process
; comes to OnTaskbarShown. Out-of-context, like the foreground hook
; (WindowEvents.ahk): the events arrive on this thread's message queue.
WatchTaskbarShown(on) {
    global taskbarShowHook, taskbarShowCallback
    static EVENT_OBJECT_SHOW := 0x8002, WINEVENT_OUTOFCONTEXT := 0
    if taskbarShowHook {
        DllCall("UnhookWinEvent", "Ptr", taskbarShowHook)
        taskbarShowHook := 0
    }
    taskbars := TaskbarWindows()
    if !on || !taskbars.Length
        return
    if !taskbarShowCallback
        taskbarShowCallback := CallbackCreate(OnTaskbarShown,, 7)
    ; Not WinGetPID: it can't see the taskbar once it's hidden.
    DllCall("GetWindowThreadProcessId", "Ptr", taskbars[1], "UInt*", &explorerPid := 0)
    taskbarShowHook := DllCall("SetWinEventHook"
        , "UInt", EVENT_OBJECT_SHOW, "UInt", EVENT_OBJECT_SHOW
        , "Ptr", 0, "Ptr", taskbarShowCallback
        , "UInt", explorerPid, "UInt", 0
        , "UInt", WINEVENT_OUTOFCONTEXT, "Ptr")
}

; idObject 0 is the window itself (OBJID_WINDOW), not something inside it.
OnTaskbarShown(hook, event, hwnd, idObject, *) {
    if idObject != 0 || !taskbarHidden
        return
    try cls := WinGetClass("ahk_id " hwnd)
    catch
        return
    if cls = "Shell_TrayWnd" || cls = "Shell_SecondaryTrayWnd"
        DllCall("ShowWindow", "Ptr", hwnd, "Int", 0)   ; SW_HIDE
}

OnTaskbarMessage(wParam, lParam, *) {
    if wParam = 1
        ToggleTaskbar()
    else if wParam = 2
        SetTimer(ActivateLikeTaskbar.Bind(lParam), -1)  ; reply first; don't block the sender
    else if wParam = 3
        SetTimer(() => ExitApp(), -1)
    else if wParam = 4
        SetTimer(() => Send("^{Esc}"), -1)   ; Ctrl+Esc opens Start
    else if wParam = 5 && taskbarHidden
        SetTaskbarHidden(false)
    return taskbarHidden ? 1 : 2
}

; Zebar's open-apps island focuses windows through GlazeWM, which ignores
; commands while paused (Alt+\); then it calls taskbar.ahk focus <hwnd> and
; this does what a taskbar click does: SC_RESTORE, then switch with foreground
; rights.
ActivateLikeTaskbar(hwnd) {
    win := "ahk_id " hwnd
    if !WinExist(win)
        return
    if WinGetMinMax(win) = -1
        PostMessage(0x0112, 0xF120, 0,, win)  ; WM_SYSCOMMAND, SC_RESTORE
    DllCall("SwitchToThisWindow", "Ptr", hwnd, "Int", 1)
    try WinActivate(win)
}
