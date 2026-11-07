; Starts the desktop stack at logon, from a scheduled task (see CLAUDE.md).
; The Startup folder is too slow: Windows runs the Run-key apps first, one at a
; time with up to 30 s each, so Startup items began about 5 minutes after logon.
; GlazeWM starts Zebar itself (startup_commands).
#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance Off
OnError((*) => ExitApp(1))

; Explorer's taskbar first: Zebar owns a Shell_TrayWnd of its own, which mustn't
; be there before Explorer creates the real one.
DetectHiddenWindows(true)
WinWait("ahk_class Shell_TrayWnd ahk_exe explorer.exe",, 30)

; Run, not the task's own action: GlazeWM is a uiAccess program, which has to be
; started through the shell.
if !ProcessExist("glazewm.exe")
    Run("C:\Program Files\glzr.io\GlazeWM\glazewm.exe")
Run(A_ScriptDir "\CapsEscSwap.ahk")
