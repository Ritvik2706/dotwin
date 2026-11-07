; ── Windows taskbar: auto-hide (Zebar replaces it) — Win+F4 ──
; While "hidden" the taskbar is on auto-hide, which releases its reserved
; strip (so GlazeWM tiles up to the bottom edge) and still lets it slide
; up when the mouse touches the bottom edge. Start is kept out of the way:
; a lone Win tap doesn't open it (Win+key combos still work). Auto-hide is
; an Explorer setting, so it survives Explorer restarts and display
; changes. Win+F4 or the Zebar power menu (through taskbar.ahk,
; WM_TASKBAR) switches back to always-on-top.
; Restored on script exit.

; Explorer's taskbars only: Zebar owns a hidden, blank Shell_TrayWnd of its
; own (for tray icons), which must never be shown.
TASKBAR_WINDOWS := ["ahk_class Shell_TrayWnd ahk_exe explorer.exe"
                 , "ahk_class Shell_SecondaryTrayWnd ahk_exe explorer.exe"]
taskbarHidden   := true

; WM_APP+1 from taskbar.ahk: wParam 0 = query, 1 = toggle, 2 = focus the
; window lParam the way a taskbar click does, 3 = quit the script. Replies 1 when the taskbar
; is auto-hidden, 2 when always on top.
WM_TASKBAR := 0x8001

StartTaskbarHiding() {
    OnMessage(WM_TASKBAR, OnTaskbarMessage)
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
; anti-cheat game (AntiCheatGames.ahk): then it stays on auto-hide. Not on a
; reload either: the new instance hides it at once, and in between GlazeWM would
; re-tile every window around it.
RestoreTaskbarOnExit(reason, code) {
    if code != EXIT_FOR_GAME && reason != "Reload" && reason != "Single"
        SetTaskbarHidden(false)
}

ToggleTaskbar() {
    SetTaskbarHidden(!taskbarHidden)
    TrayTip(taskbarHidden ? "Taskbar auto-hides" : "Taskbar shown", "Windows Taskbar", 1)
}

SetTaskbarHidden(hide) {
    global taskbarHidden := hide
    ShowTaskbarWindows()
    SetTaskbarAutoHide(hide)
    SetTrayCheck(TRAY_TASKBAR, hide)
}

SetTaskbarAutoHide(on) {
    ; APPBARDATA (x64): cbSize@0, hWnd@8, uCallbackMessage@16, uEdge@20, rc@24, lParam@40
    abd := Buffer(48, 0)
    NumPut("UInt", abd.Size, abd, 0)
    NumPut("Ptr", WinExist(TASKBAR_WINDOWS[1]), abd, 8)
    NumPut("Ptr", on ? 0x1 : 0x2, abd, 40)                        ; ABS_AUTOHIDE : ABS_ALWAYSONTOP
    DllCall("Shell32\SHAppBarMessage", "UInt", 0xA, "Ptr", abd)   ; ABM_SETSTATE
}

; Auto-hide needs the taskbar windows visible. Older versions of this
; script hid them outright, so un-hide any that are still hidden.
ShowTaskbarWindows() {
    prev := DetectHiddenWindows(true)
    for taskbar in TASKBAR_WINDOWS
        for hwnd in WinGetList(taskbar)
            if !(WinGetStyle("ahk_id " hwnd) & 0x10000000)   ; WS_VISIBLE
                WinShow("ahk_id " hwnd)
    DetectHiddenWindows(prev)
}

OnTaskbarMessage(wParam, lParam, *) {
    if wParam = 1
        ToggleTaskbar()
    else if wParam = 2
        SetTimer(ActivateLikeTaskbar.Bind(lParam), -1)  ; reply first; don't block the sender
    else if wParam = 3
        SetTimer(() => ExitApp(), -1)
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
