#Requires AutoHotkey v2.0
#SingleInstance Force

; ── Performance Settings ──────────────────────────────────
; High per-interval cap so rapid WheelUp auto-fire never trips
; AHK's runaway-hotkey warning dialog mid-game. A true infinite
; loop fires thousands/sec and is still caught; our fire rate is
; hard-capped far below this by FIRE_HOLD_MS + MaxThreadsPerHotkey.
A_HotkeyInterval        := 1000
A_MaxHotkeysPerInterval := 500
KeyHistory(0)
ListLines(false)
ProcessSetPriority("High")
SetKeyDelay(-1, -1)
SetMouseDelay(-1)

; Safety: release the left button on exit/reload so auto-fire can
; never leave it stuck down if the script dies mid-click.
OnExit((*) => Send("{Blind}{LButton up}"))

; ── General Remap State ───────────────────────────────────
remapsActive := true
cachedPID    := 0
cachedResult := true
cachedTick   := 0
CACHE_MS     := 150

; ── WZ Macro State ────────────────────────────────────────
PING_DELAY_MS  := 50     ; ms between the two MButton clicks (ping)
FIRE_HOLD_MS   := 8      ; ms the button is held down each shot (raise if shots don't register)
FIRE_GAP_MS    := 5      ; ms between shots (lower = faster fire)
FIRE_MAX_MS    := 4000   ; auto-fire stops after this per WheelUp (≈ one mag) even if ADS is still held
; Keys that may be pressed during auto-fire without cancelling it. Any other
; keyboard key (or a side/middle mouse button, wheel down) stops it instantly.
FIRE_ALLOWED_KEYS := "asdwxc{Alt}{LAlt}{RAlt}{Ctrl}{LCtrl}{RCtrl}{Shift}{LShift}{RShift}{CapsLock}"
fireActive     := false  ; true while an auto-fire run is in progress
fireCancel     := false  ; set by any non-whitelisted key/button press during a run
wzMacroActive  := true   ; master toggle — Alt+/
wzFireActive   := false  ; rapid-fire toggle — Alt+' (off by default; also needs wzMacroActive)
isWZProcess    := false  ; maintained by timer — never touched on keypress
wzLastSeenTick := 0      ; last tick WZ was the active window
WZ_DEBOUNCE_MS := 500    ; stay true this long after losing WZ focus

; ── Warzone process whitelist ──────────────────────────────
wzProcesses := Map()
wzProcesses.CaseSense := "Off"
wzProcesses["cod.exe"]           := true   ; Warzone (2022+) / BO6
wzProcesses["ModernWarfare.exe"] := true   ; Warzone Caldera

; ── WZ window-detection timer (runs every 250 ms) ─────────
; Fires 4×/sec in the background — zero cost on any keypress.
; #HotIf conditions below just read the resulting booleans.
SetTimer(DetectWZWindow, 250)

DetectWZWindow() {
    global isWZProcess, wzProcesses, wzLastSeenTick, WZ_DEBOUNCE_MS
    try {
        proc := WinGetProcessName("A")
        if wzProcesses.Has(proc) {
            isWZProcess    := true
            wzLastSeenTick := A_TickCount
        } else {
            isWZProcess := (A_TickCount - wzLastSeenTick) < WZ_DEBOUNCE_MS
        }
    } catch {
        isWZProcess := (A_TickCount - wzLastSeenTick) < WZ_DEBOUNCE_MS
    }
}

; ── GlazeWM auto-pause when CoD is running ───────────────────
global gCodRunning       := false
global gGlazePausedByCod := false
GLAZE_CLI := "C:\Program Files\glzr.io\GlazeWM\cli\glazewm.exe"

SetTimer(MonitorCodProcess, 3000)

IsGlazeWMPaused() {
    global GLAZE_CLI
    try {
        shell := ComObject("WScript.Shell")
        exec  := shell.Exec('"' GLAZE_CLI '" query paused')
        return Trim(exec.StdOut.ReadAll()) = "true"
    } catch {
        return false
    }
}

MonitorCodProcess() {
    global gCodRunning, gGlazePausedByCod, wzProcesses, GLAZE_CLI

    nowRunning := false
    for proc, _ in wzProcesses {
        if ProcessExist(proc) {
            nowRunning := true
            break
        }
    }

    if nowRunning && !gCodRunning {
        gCodRunning := true
        if !IsGlazeWMPaused() {
            Run('"' GLAZE_CLI '" command wm-toggle-pause',, "Hide")
            TrayTip("CoD detected", "GlazeWM paused automatically", 1)
            gGlazePausedByCod := true
        }
    } else if !nowRunning && gCodRunning {
        gCodRunning := false
        if gGlazePausedByCod {
            Run('"' GLAZE_CLI '" command wm-toggle-pause',, "Hide")
            TrayTip("CoD closed", "GlazeWM resumed automatically", 1)
            gGlazePausedByCod := false
        }
    }
}

; ── Excluded process set (lowercase, fast lookup) ─────────
excludeExact := Map()
excludeExact.CaseSense := "Off"
excludeExact["FPSAimTrainer-Win64-Shipping.exe"] := true
excludeExact["cod.exe"] := true

excludePrefix := ["cod"]

; ── App Launchers ──────────────────────────────────────────

!y:: {  ; Alt+Y → File Explorer (focus-or-launch)
    if !ShouldRemap()
        return
    hwnd := WinExist("ahk_class CabinetWClass")
    if hwnd {
        WinActivate("ahk_id " hwnd)
        return
    }
    Run("explorer.exe")
}

!g:: {  ; Alt+G → Zen Browser (focus-or-launch)
    if !ShouldRemap()
        return
    hwnd := WinExist("ahk_exe zen.exe")
    if hwnd {
        WinActivate("ahk_id " hwnd)
        return
    }
    Run("C:\Program Files\Zen Browser\zen.exe")
}

!`;:: {  ; Alt+; → Windows Settings
    if !ShouldRemap()
        return
    hwnd := WinExist("ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe")
    if hwnd {
        WinActivate("ahk_id " hwnd)
        return
    }
    Run("ms-settings:")
}

!b:: {  ; Alt+B → SumatraPDF (smart focus-or-launch)
    if !ShouldRemap()
        return
    SmartFocusOrLaunch(WinExist("ahk_exe SumatraPDF.exe"), "SumatraPDF.exe")
}

!Enter:: {  ; Alt+Enter → WezTerm (smart focus-or-launch)
    if !ShouldRemap()
        return
    SmartFocusOrLaunch(WinExist("ahk_exe wezterm-gui.exe"), "C:\Program Files\WezTerm\wezterm-gui.exe")
}

; ── Toggle: Win+F1 (general remaps) ───────────────────────
ToggleRemaps() {
    global remapsActive, cachedPID
    remapsActive := !remapsActive
    cachedPID := 0
    TrayTip(remapsActive ? "Remaps ON" : "Remaps OFF", "Keyboard Remaps", 1)
    UpdateTray()
}
#F1:: ToggleRemaps()

; ── Reload script: Win+F3 ─────────────────────────────────
#F3:: Reload()

; ── Debug: Win+F2 ─────────────────────────────────────────
#F2:: {
    try {
        proc := WinGetProcessName("A")
        MsgBox("Process: " proc)
    } catch
        MsgBox("Couldn't detect process")
}

; ── Smart focus-or-launch (minimize if active, restore to monitor if minimized) ──
SmartFocusOrLaunch(hwnd, launchCmd) {
    if !hwnd {
        Run(launchCmd)
        return
    }
    if WinActive("ahk_id " hwnd) {
        WinMinimize("ahk_id " hwnd)
        return
    }
    if WinGetMinMax("ahk_id " hwnd) != -1 {
        WinActivate("ahk_id " hwnd)
        return
    }
    CoordMode("Mouse", "Screen")
    MouseGetPos(&mx, &my)
    WinRestore("ahk_id " hwnd)
    loop MonitorGetCount() {
        MonitorGetWorkArea(A_Index, &mL, &mT, &mR, &mB)
        if (mx >= mL && mx < mR && my >= mT && my < mB) {
            mW := mR - mL
            mH := mB - mT
            ww := Round(mW * 0.85)
            wh := Round(mH * 0.85)
            WinMove(mL + ((mW - ww) // 2), mT + ((mH - wh) // 2), ww, wh, "ahk_id " hwnd)
            break
        }
    }
    WinActivate("ahk_id " hwnd)
}

; ── Check with PID-based caching ──────────────────────────
ShouldRemap() {
    global remapsActive, cachedPID, cachedResult, cachedTick, CACHE_MS

    if !remapsActive
        return false

    now := A_TickCount
    pid := WinGetPID("A")

    if (pid = cachedPID && (now - cachedTick) < CACHE_MS)
        return cachedResult

    cachedPID := pid
    cachedTick := now

    try {
        proc := WinGetProcessName("A")

        if excludeExact.Has(proc) {
            cachedResult := false
            return false
        }

        procLow := StrLower(proc)
        for prefix in excludePrefix {
            if InStr(procLow, prefix) = 1 {
                cachedResult := false
                return false
            }
        }
    } catch {
        cachedResult := true
        return true
    }

    cachedResult := true
    return true
}

; ── Remaps ────────────────────────────────────────────────
*CapsLock:: {
    if ShouldRemap()
        Send("{Blind}{Escape}")
    else
        Send("{Blind}{CapsLock}")
}

*Escape:: {
    if ShouldRemap()
        SetCapsLockState(!GetKeyState("CapsLock", "T"))
    else
        Send("{Blind}{Escape}")
}

; ── Alt+S: Claude toggle ──────────────────────────────────
!s:: {
    if !ShouldRemap()
        return

    claudeHwnd := WinExist("ahk_exe claude.exe")

    if !claudeHwnd {
        Run("shell:AppsFolder\Claude_pzs8sxrjxfjjc!Claude")
        return
    }

    if WinActive("ahk_id " claudeHwnd) {
        WinMinimize("ahk_id " claudeHwnd)
        return
    }

    if WinGetMinMax("ahk_id " claudeHwnd) != -1 {
        WinActivate("ahk_id " claudeHwnd)
        return
    }

    ; Minimized — restore to cursor's monitor
    CoordMode("Mouse", "Screen")
    MouseGetPos(&mx, &my)
    WinRestore("ahk_id " claudeHwnd)

    loop MonitorGetCount() {
        MonitorGetWorkArea(A_Index, &mL, &mT, &mR, &mB)
        if (mx >= mL && mx < mR && my >= mT && my < mB) {
            mW := mR - mL
            mH := mB - mT

            ww := Round(mW * 0.85)
            wh := Round(mH * 0.85)

            newX := mL + ((mW - ww) // 2)
            newY := mT + ((mH - wh) // 2)

            WinMove(newX, newY, ww, wh, "ahk_id " claudeHwnd)
            break
        }
    }

    WinActivate("ahk_id " claudeHwnd)
}

; ── Alt+F7: Restart Zebar ─────────────────────────────────
!F7:: {
    if !ShouldRemap()
        return
    ProcessClose("zebar.exe")
    Sleep(300)
    Run("C:\Program Files\glzr.io\Zebar\zebar.exe")
}

; ── Alt+F9: Restart GlazeWM ───────────────────────────────
; Hard-kills the WM (and its watcher) then relaunches. The main
; exe spawns its own watcher, so we only need to Run the one.
!F9:: {
    if !ShouldRemap()
        return
    ProcessClose("glazewm.exe")
    ProcessClose("glazewm-watcher.exe")
    Sleep(300)
    Run("C:\Program Files\glzr.io\GlazeWM\glazewm.exe")
    TrayTip("GlazeWM restarted", "GlazeWM", 1)
}

; ── Sioyek: black titlebar via DWM DWMWA_CAPTION_COLOR ───
SetTimer(ApplySioyekCaptionColor, 2000)

ApplySioyekCaptionColor() {
    hwnd := WinExist("ahk_exe sioyek.exe")
    if !hwnd
        return
    black := 0x000000
    DllCall("dwmapi\DwmSetWindowAttribute",
        "ptr",  hwnd,
        "uint", 35,
        "uint*", &black,
        "uint", 4)
}

; ── WZ: Toggles — Alt+/ (master), Alt+' (rapid fire) ─────
; Hotkeys only active inside Warzone; the tray menu calls the
; functions directly so they work from anywhere. Neither hotkey is
; gated on its own flag so you can always re-enable.
ToggleWZMacros() {
    global wzMacroActive
    wzMacroActive := !wzMacroActive
    if !wzMacroActive
        Send "{Blind}{LButton up}"   ; safety: never leave the fire button held when disabling
    TrayTip(wzMacroActive ? "WZ Macros ON" : "WZ Macros OFF", "WZ Macros", 1)
    UpdateTray()
}

ToggleWZFire() {
    global wzFireActive
    wzFireActive := !wzFireActive
    if !wzFireActive
        Send "{Blind}{LButton up}"   ; safety: never leave the fire button held when disabling
    TrayTip(wzFireActive ? "Rapid Fire ON" : "Rapid Fire OFF", "WZ Macros", 1)
    UpdateTray()
}

#HotIf isWZProcess
!/:: ToggleWZMacros()
!':: ToggleWZFire()
#HotIf

; ── WZ: Live Ping — only when in Warzone AND macro is on ──
; #HotIf reads two plain booleans — zero WinAPI calls on keypress.
; #MaxThreadsPerHotkey 1: if a ping is already in flight, extra c
; presses are dropped rather than stacking and sending extra clicks.
#MaxThreadsPerHotkey 1
#HotIf isWZProcess && wzMacroActive
c:: {
    global PING_DELAY_MS
    Send "{Blind}{MButton}"
    Sleep PING_DELAY_MS
    Send "{Blind}{MButton}"
}

#HotIf

; WheelUp → one notch starts continuous auto-fire that keeps going until
; RButton (ADS) is released, so a single flick empties the mag. Each shot
; is down → hold → up so Warzone samples the press in its own frame.
; #MaxThreadsPerHotkey 1 (set above) drops any notch that arrives while
; already firing, so runs never overlap and the button cannot stick.
; Only armed while RButton is physically held (ADS) — otherwise WheelUp
; passes through untouched. FIRE_MAX_MS is a hard ceiling in case ADS is
; held indefinitely. Any key outside FIRE_ALLOWED_KEYS, or a side/middle
; mouse button or wheel-down, cancels the run immediately (see below).
; Requires both the master toggle (Alt+/) and the rapid-fire toggle (Alt+').
#HotIf isWZProcess && wzMacroActive && wzFireActive && GetKeyState("RButton", "P")
WheelUp:: {
    global FIRE_HOLD_MS, FIRE_GAP_MS, FIRE_MAX_MS, FIRE_ALLOWED_KEYS, fireActive, fireCancel
    fireCancel := false
    fireActive := true
    ; Visible (V) so keys still reach the game; ignore script-sent input (I).
    ; Notify on every key except the whitelist.
    ih := InputHook("V I")
    ih.KeyOpt("{All}", "N")
    ih.KeyOpt(FIRE_ALLOWED_KEYS, "-N")
    ih.OnKeyDown := FireCancelOnKey
    start := A_TickCount
    try {
        ih.Start()
        Loop {
            if (fireCancel || !GetKeyState("RButton", "P") || (A_TickCount - start) > FIRE_MAX_MS)
                break
            Send "{Blind}{LButton down}"
            Sleep FIRE_HOLD_MS
            Send "{Blind}{LButton up}"
            if (fireCancel || !GetKeyState("RButton", "P"))
                break
            Sleep FIRE_GAP_MS
        }
    } finally {
        ih.Stop()
        fireActive := false
        Send "{Blind}{LButton up}"   ; guarantee release even if a shot errors or the thread unwinds
    }
}
#HotIf

FireCancelOnKey(ih, vk, sc) {
    global fireCancel := true
}

; Mouse buttons aren't seen by InputHook, so these pass-through (~) hotkeys
; only exist while a run is active and just raise the cancel flag.
#HotIf fireActive
~*XButton1::
~*XButton2::
~*MButton::
~*WheelDown:: {
    global fireCancel := true
}
#HotIf
#MaxThreadsPerHotkey 1  ; reset to default

; ── Tray ──────────────────────────────────────────────────
TRAY_REMAPS := "Remaps`tWin+F1"
TRAY_WZ     := "WZ Macros`tAlt+/"
TRAY_FIRE   := "WZ Rapid Fire`tAlt+'"

UpdateTray() {
    global remapsActive, wzMacroActive, wzFireActive, TRAY_REMAPS, TRAY_WZ, TRAY_FIRE
    A_IconTip := "CapsLock Remap | WZ Macros (" . (wzMacroActive ? "ON" : "OFF") . ")"
              . " | Rapid Fire (" . (wzFireActive ? "ON" : "OFF") . ")"
    SetTrayCheck(TRAY_REMAPS, remapsActive)
    SetTrayCheck(TRAY_WZ,     wzMacroActive)
    SetTrayCheck(TRAY_FIRE,   wzFireActive)
}

SetTrayCheck(item, on) {
    if on
        A_TrayMenu.Check(item)
    else
        A_TrayMenu.Uncheck(item)
}

A_TrayMenu.Delete()
A_TrayMenu.Add(TRAY_REMAPS,   (*) => ToggleRemaps())
A_TrayMenu.Add(TRAY_WZ,       (*) => ToggleWZMacros())
A_TrayMenu.Add(TRAY_FIRE,     (*) => ToggleWZFire())
A_TrayMenu.Add("Reload Script", (*) => Reload())
A_TrayMenu.Add("Edit Script",   (*) => Edit())
A_TrayMenu.Add()
A_TrayMenu.Add("Exit",          (*) => ExitApp())

UpdateTray()
