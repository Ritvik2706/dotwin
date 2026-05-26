#Requires AutoHotkey v2.0
#SingleInstance Force

; ── Performance Settings ──────────────────────────────────
A_MaxHotkeysPerInterval := 200
KeyHistory(0)
ListLines(false)
ProcessSetPriority("High")
SetKeyDelay(-1, -1)
SetMouseDelay(-1)

; ── General Remap State ───────────────────────────────────
remapsActive := true
cachedPID    := 0
cachedResult := true
cachedTick   := 0
CACHE_MS     := 150

; ── WZ Live Ping State ────────────────────────────────────
PING_DELAY_MS  := 50     ; ms between the two MButton clicks
wzMacroActive  := true   ; toggled by Alt+/
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

!y:: {  ; Alt+Y → OneCommander (focus-or-launch)
    if !ShouldRemap()
        return
    hwnd := WinExist("ahk_exe OneCommander.exe")
    if hwnd {
        WinActivate("ahk_id " hwnd)
        return
    }
    Run("OneCommander.exe")
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
#F1:: {
    global remapsActive, cachedPID
    remapsActive := !remapsActive
    cachedPID := 0
    TrayTip(remapsActive ? "Remaps ON" : "Remaps OFF", "Keyboard Remaps", 1)
}

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

; ── Alt+Z: Restart Zebar ──────────────────────────────────
!F7:: {
    if !ShouldRemap()
        return
    ProcessClose("zebar.exe")
    Sleep(300)
    Run("C:\Program Files\glzr.io\Zebar\zebar.exe")
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

; ── WZ: Master toggle Alt+/ — only active inside Warzone ──
; Not gated on wzMacroActive so you can always re-enable.
#HotIf isWZProcess
!/:: {
    global wzMacroActive
    wzMacroActive := !wzMacroActive
    TrayTip(wzMacroActive ? "WZ Macros ON" : "WZ Macros OFF", "WZ Macros", 1)
    UpdateTray()
}
#HotIf

; ── WZ: Live Ping — only when in Warzone AND macro is on ──
; #HotIf reads two plain booleans — zero WinAPI calls on keypress.
; #MaxThreadsPerHotkey 1: if a ping is already in flight, extra c
; presses are dropped rather than stacking and sending extra clicks.
#MaxThreadsPerHotkey 1
#HotIf isWZProcess && wzMacroActive
c:: {
    global PING_DELAY_MS
    Click "Middle"
    Sleep PING_DELAY_MS
    Click "Middle"
}
#HotIf
#MaxThreadsPerHotkey 1  ; reset to default

; ── WZ: Enter toggles macro off/on (for chat) ─────────────
; First Enter opens chat and disables the ping macro so keys
; aren't intercepted while typing. Second Enter sends the
; message and re-enables it.
#HotIf isWZProcess
Enter:: {
    global wzMacroActive
    Send "{Enter}"
    wzMacroActive := !wzMacroActive
    TrayTip(wzMacroActive ? "WZ Macros ON" : "WZ Macros OFF", "WZ Macros", 1)
    UpdateTray()
}
#HotIf

; ── Tray ──────────────────────────────────────────────────
UpdateTray() {
    global wzMacroActive
    A_IconTip := "CapsLock Remap | WZ Macros (" . (wzMacroActive ? "ON" : "OFF") . ")"
}

A_TrayMenu.Delete()
A_TrayMenu.Add("Toggle Remaps`tWin+F1",      (*) => Send("#F1"))
A_TrayMenu.Add("Toggle WZ Macros`tAlt+/",    (*) => Send("!/"))
A_TrayMenu.Add("Reload Script",               (*) => Reload())
A_TrayMenu.Add("Edit Script",             (*) => Edit())
A_TrayMenu.Add()
A_TrayMenu.Add("Exit",                     (*) => ExitApp())

UpdateTray()
