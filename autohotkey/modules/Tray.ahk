; ── Tray menu ────────────────────────────────────────────
; Check marks mirror the toggles; UpdateTray() refreshes them.

TRAY_REMAPS  := "Remaps`tWin+F1"
TRAY_TASKBAR := "Auto-hide Windows Taskbar`tWin+F4"
TRAY_AWAKE   := "Caffeine`tAlt+Ctrl+I"

BuildTrayMenu() {
    A_TrayMenu.Delete()
    A_TrayMenu.Add(TRAY_REMAPS,     (*) => ToggleRemaps())
    A_TrayMenu.Add(TRAY_TASKBAR,    (*) => ToggleTaskbar())
    A_TrayMenu.Add(TRAY_AWAKE,      (*) => ToggleCaffeine())
    A_TrayMenu.Add("Reload Script", (*) => Reload())
    A_TrayMenu.Add("Edit Script",   (*) => Edit())
    A_TrayMenu.Add()
    A_TrayMenu.Add("Exit",          (*) => ExitApp())
}

; The Zebar bar treats a tray icon whose tooltip starts with "CapsLock Remap"
; as "the script is running" (src/lib/ahk.js); keep that prefix.
UpdateTray() {
    A_IconTip := "CapsLock Remap"
    SetTrayCheck(TRAY_REMAPS,  remapsActive)
    SetTrayCheck(TRAY_TASKBAR, taskbarHidden)
    SetTrayCheck(TRAY_AWAKE,   caffeineOn)
}

SetTrayCheck(item, on) {
    if on
        A_TrayMenu.Check(item)
    else
        A_TrayMenu.Uncheck(item)
}
