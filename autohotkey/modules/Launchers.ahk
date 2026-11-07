; ── App launchers (Alt+key) ───────────────────────────────
; Gated on ShouldRemap(), so they're swallowed (not passed through) in
; excluded games.

ZEN_EXE     := "C:\Program Files\Zen Browser\zen.exe"
WEZTERM_EXE := "C:\Program Files\WezTerm\wezterm-gui.exe"
CLAUDE_APP  := "shell:AppsFolder\Claude_pzs8sxrjxfjjc!Claude"

!y:: {  ; File Explorer
    if ShouldRemap()
        FocusOrLaunch("ahk_class CabinetWClass", "explorer.exe")
}

!r:: {  ; File Explorer, on niri's key
    if ShouldRemap()
        FocusOrLaunch("ahk_class CabinetWClass", "explorer.exe")
}

!g:: {  ; Zen Browser
    if ShouldRemap()
        FocusOrLaunch("ahk_class MozillaWindowClass ahk_exe zen.exe", ZEN_EXE)
}

!`;:: {  ; Windows Settings
    if ShouldRemap()
        FocusOrLaunch("Settings ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe", "ms-settings:")
}

!b:: {  ; SumatraPDF
    if ShouldRemap()
        ToggleOrLaunch("ahk_exe SumatraPDF.exe", "SumatraPDF.exe")
}

!Enter:: {  ; WezTerm
    if ShouldRemap()
        ToggleOrLaunch("ahk_exe wezterm-gui.exe", WEZTERM_EXE)
}

!s:: {  ; Claude
    if ShouldRemap()
        ToggleOrLaunch("ahk_exe claude.exe", CLAUDE_APP, true)
}

; The rest of niri's app keys. #HotIf, not the check above: in a game these
; keys reach the game untouched.
#HotIf ShouldRemap()
!+g:: Run('"' ZEN_EXE '" --new-window')
!+Enter:: Run('"' WEZTERM_EXE '"')
!x:: Run("taskmgr.exe")
!e:: Send("#.")        ; emoji panel
!v:: Send("#+s")       ; screenshot
!+BackSpace:: Send("#n")   ; notifications
#HotIf

; The app's main window, or 0. GlazeWM cloaks windows on other workspaces and
; AutoHotkey counts cloaked windows as hidden, so a plain WinExist misses them
; and the launchers would open a second copy. Hidden windows are searched too,
; then narrowed to real app windows. Suspended UWP apps leave cloaked frames
; behind, so a cloaked window only counts if GlazeWM manages it.
FindAppWindow(winTitle) {
    static WS_VISIBLE := 0x10000000, WS_EX_TOOLWINDOW := 0x80, GW_OWNER := 4, DWMWA_CLOAKED := 14
    prev := DetectHiddenWindows(true)
    cloakedWindows := []
    found := 0
    for hwnd in WinGetList(winTitle) {
        try {
            win := "ahk_id " hwnd
            if !(WinGetStyle(win) & WS_VISIBLE) || (WinGetExStyle(win) & WS_EX_TOOLWINDOW) || WinGetTitle(win) = ""
                continue
        } catch
            continue
        if DllCall("GetWindow", "Ptr", hwnd, "UInt", GW_OWNER, "Ptr")
            continue
        cloaked := 0
        DllCall("dwmapi\DwmGetWindowAttribute", "Ptr", hwnd, "UInt", DWMWA_CLOAKED, "UInt*", &cloaked, "UInt", 4)
        if !cloaked {
            found := hwnd
            break
        }
        cloakedWindows.Push(hwnd)
    }
    if !found && cloakedWindows.Length {
        managed := GetGlazeWindowHandles()
        for hwnd in cloakedWindows
            if managed.Has(hwnd) {
                found := hwnd
                break
            }
    }
    DetectHiddenWindows(prev)
    return found
}

; Activate the window if it exists, otherwise launch it. Activating a window
; on another workspace makes GlazeWM switch to that workspace.
FocusOrLaunch(winTitle, launchCmd) {
    if hwnd := FindAppWindow(winTitle) {
        DetectHiddenWindows(true)   ; this thread only: the window may be cloaked
        WinActivate("ahk_id " hwnd)
    } else {
        Run(launchCmd)
    }
}

; Like FocusOrLaunch, but minimizes the window if it's already active. With
; `float`, a minimized window comes back centred on the cursor's monitor at 85%
; size: only for windows GlazeWM ignores, since it wouldn't re-tile a managed
; window moved this way.
ToggleOrLaunch(winTitle, launchCmd, float := false) {
    hwnd := FindAppWindow(winTitle)
    if !hwnd {
        Run(launchCmd)
        return
    }
    DetectHiddenWindows(true)   ; this thread only: the window may be cloaked
    win := "ahk_id " hwnd
    if WinActive(win) {
        WinMinimize(win)
        return
    }
    if WinGetMinMax(win) != -1 {
        WinActivate(win)
        return
    }
    WinRestore(win)
    if float
        CentreOnCursorMonitor(win)
    WinActivate(win)
}

CentreOnCursorMonitor(win) {
    CoordMode("Mouse", "Screen")
    MouseGetPos(&mx, &my)
    loop MonitorGetCount() {
        MonitorGetWorkArea(A_Index, &mL, &mT, &mR, &mB)
        if mx >= mL && mx < mR && my >= mT && my < mB {
            mW := mR - mL, mH := mB - mT
            ww := Round(mW * 0.85), wh := Round(mH * 0.85)
            WinMove(mL + (mW - ww) // 2, mT + (mH - wh) // 2, ww, wh, win)
            break
        }
    }
}
