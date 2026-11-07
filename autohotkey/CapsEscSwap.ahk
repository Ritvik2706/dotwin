#Requires AutoHotkey v2.0
#SingleInstance Force

; The always-running script. Each feature lives in modules/:
;
;   Common             app paths, shared window messages, process list
;   Remaps             CapsLock ⇄ Escape and ShouldRemap() (Win+F1)
;   ErrorLog           uncaught errors go to errors.log, never a dialog over a game
;   Launchers          Alt+key focus-or-launch apps and niri's system shortcuts
;   Session            lock, screens off, caffeine, the Alt+Shift+/ key sheet
;   GlazeWM            CLI helpers, restart (Alt+F9)
;   Zebar              restart (Alt+F7), re-dock after display changes
;   TaskbarHiding      taskbar auto-hide, no Start on Win tap (Win+F4); taskbar.ahk bridge
;   MonitorBrightness  DDC/CI brightness + OSD (Alt+volume); brightness.ahk bridge
;   Sioyek             black Sioyek titlebar
;   AntiCheatGames     GlazeWM, Zebar and this script quit for any game; back after it
;   WindowEvents       foreground / window-created events that drive the above (no polling)
;   Tray               tray menu
;
; Modules only define state, functions and hotkeys; everything with a
; side effect (timers, message handlers) is started at the bottom, once
; all state exists. taskbar.ahk / brightness.ahk find this script by its
; file name, so keep it called CapsEscSwap.ahk.

; ── Performance ──────────────────────────────────────────
KeyHistory(0)
ListLines(false)
ProcessSetPriority("High")
SetKeyDelay(-1, -1)
SetMouseDelay(-1)

#Include %A_ScriptDir%\modules\ErrorLog.ahk
#Include %A_ScriptDir%\modules\Common.ahk
#Include %A_ScriptDir%\modules\Remaps.ahk
#Include %A_ScriptDir%\modules\Launchers.ahk
#Include %A_ScriptDir%\modules\Session.ahk
#Include %A_ScriptDir%\modules\GlazeWM.ahk
#Include %A_ScriptDir%\modules\Zebar.ahk
#Include %A_ScriptDir%\modules\TaskbarHiding.ahk
#Include %A_ScriptDir%\modules\MonitorBrightness.ahk
#Include %A_ScriptDir%\modules\Sioyek.ahk
#Include %A_ScriptDir%\modules\AntiCheatGames.ahk
#Include %A_ScriptDir%\modules\WindowEvents.ahk
#Include %A_ScriptDir%\modules\Tray.ahk

; ── Script control ───────────────────────────────────────
#F2:: {  ; show the active window's process name
    try MsgBox("Process: " WinGetProcessName("A"))
    catch
        MsgBox("Couldn't detect process")
}

#F3:: Reload()

; ── Startup ──────────────────────────────────────────────
StartGameWatch()       ; first: exits right here if a game is already running
BuildTrayMenu()        ; first: the toggles below update its check marks
StartZebarDockWatch()
StartTaskbarHiding()   ; turns on auto-hide now
StartBrightness()
StartSioyekTitlebar()
StartWindowEvents()    ; last: its handlers use everything above
UpdateTray()
