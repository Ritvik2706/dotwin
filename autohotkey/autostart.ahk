; Starts the desktop stack at logon, from a scheduled task (see CLAUDE.md).
; The Startup folder is too slow: Windows runs the Run-key apps first, one at a
; time with up to 30 s each, so Startup items began about 5 minutes after logon.
; GlazeWM starts Zebar itself (startup_commands). Flow Launcher's own
; "start on system startup" is off so it starts only from here.
#Requires AutoHotkey v2.0
#NoTrayIcon
#SingleInstance Off
OnError((*) => ExitApp(1))

; Raw Accel's driver forgets its settings at shutdown (the mouse rotation lives
; in settings.json there), so they're written to it again at every logon.
RawAccel := "C:\Program Files\RawAccel"
if FileExist(RawAccel "\writer.exe")
    Run('"' RawAccel '\writer.exe" settings.json', RawAccel, "Hide")

; Explorer's taskbar first: Zebar owns a Shell_TrayWnd of its own, which mustn't
; be there before Explorer creates the real one.
DetectHiddenWindows(true)
WinWait("ahk_class Shell_TrayWnd ahk_exe explorer.exe",, 30)

; Run, not the task's own action: GlazeWM is a uiAccess program, which has to be
; started through the shell.
if !ProcessExist("glazewm.exe")
    Run("C:\Program Files\glzr.io\GlazeWM\glazewm.exe")
; Squirrel's stub, which survives Flow updates (the real exe is in app-<version>\).
if !ProcessExist("Flow.Launcher.exe")
    Run(EnvGet("LOCALAPPDATA") "\FlowLauncher\Flow.Launcher.exe")
Run(A_ScriptDir "\CapsEscSwap.ahk")
