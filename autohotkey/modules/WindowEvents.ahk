; ── Window events: what replaces polling ─────────────────
; Windows tells the script when the foreground window changes (a WinEvent
; hook) and when a top-level window is created (the shell hook). Each
; event looks up the window's process once (~1 µs) and hands it to the
; features that care. Nothing runs between events, so the script is idle
; while you're in a game.
;
;   foreground change → game (quit), then as below
;   window created    → listed game (quit), Sioyek titlebar

foregroundHook     := 0
foregroundCallback := 0

StartWindowEvents() {
    global foregroundHook, foregroundCallback
    static EVENT_SYSTEM_FOREGROUND := 3, WINEVENT_OUTOFCONTEXT := 0
    ; Out-of-context: Windows posts the event to this thread's message
    ; queue, so the callback runs like any other AHK thread.
    foregroundCallback := CallbackCreate(OnForegroundEvent,, 7)
    foregroundHook := DllCall("SetWinEventHook"
        , "UInt", EVENT_SYSTEM_FOREGROUND, "UInt", EVENT_SYSTEM_FOREGROUND
        , "Ptr", 0, "Ptr", foregroundCallback, "UInt", 0, "UInt", 0
        , "UInt", WINEVENT_OUTOFCONTEXT, "Ptr")
    OnExit(UnhookForeground)

    DllCall("RegisterShellHookWindow", "Ptr", A_ScriptHwnd)
    OnMessage(DllCall("RegisterWindowMessage", "Str", "SHELLHOOK", "UInt"), OnShellHook)

    OnForegroundChanged(WinExist("A"))   ; initial state
}

; Its own function, not a fat arrow: an OnExit callback that returns non-zero
; (UnhookWinEvent returns 1) cancels the exit.
UnhookForeground(*) {
    DllCall("UnhookWinEvent", "Ptr", foregroundHook)
}

OnForegroundEvent(hook, event, hwnd, *) {
    OnForegroundChanged(hwnd)
}

OnForegroundChanged(hwnd) {
    proc := WindowProcess(hwnd)
    OnAppWindow(proc, hwnd)
    if proc != ""
        OnGameFocused(proc, hwnd)
}

OnShellHook(event, hwnd, *) {
    static HSHELL_WINDOWCREATED := 1
    if event = HSHELL_WINDOWCREATED
        OnAppWindow(WindowProcess(hwnd), hwnd)
}

; Per-app reactions to a window being created or focused.
OnAppWindow(proc, hwnd) {
    if proc = ""
        return
    OnGameWindow(proc)
    if proc = "sioyek.exe"
        ApplySioyekCaptionColor(hwnd)
}

; The window's process name, or "" if it can't be read (gone, or no window).
WindowProcess(hwnd) {
    if !hwnd
        return ""
    prev := DetectHiddenWindows(true)   ; a just-created window may not be visible yet
    try proc := WinGetProcessName("ahk_id " hwnd)
    catch
        proc := ""
    ; Anti-cheat can deny opening the game's process, which
    ; WinGetProcessName needs. The window's PID needs no process handle,
    ; and the process list has its name.
    if proc = ""
        try proc := ProcessNameOf(WinGetPID("ahk_id " hwnd))
    DetectHiddenWindows(prev)   ; restore: at startup this would otherwise become every thread's default
    return proc
}
