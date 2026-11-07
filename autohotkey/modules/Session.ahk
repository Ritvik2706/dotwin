; ── Session: lock, screens off, caffeine, key sheet ──────
; niri's system binds. These use #HotIf rather than the swallow-and-ignore
; check in Launchers.ahk, so in a game the keys reach the game untouched.

caffeineOn := false
keySheet   := 0   ; created on first use

; Alt+CapsLock, handled in Remaps.ahk's CapsLock hotkey.
LockSession() {
    DllCall("LockWorkStation")
}

; Releasing the keys would wake the screens again, so wait for that first.
ScreensOff() {
    static WM_SYSCOMMAND := 0x112, SC_MONITORPOWER := 0xF170, HWND_BROADCAST := 0xFFFF, POWER_OFF := 2
    for key in ["b", "Shift", "Alt"]
        KeyWait(key, "T3")
    DllCall("PostMessage", "Ptr", HWND_BROADCAST, "UInt", WM_SYSCOMMAND, "Ptr", SC_MONITORPOWER, "Ptr", POWER_OFF)
}

; Keeps the system and display awake, like niri's caffeine.sh. The state
; belongs to this thread, and Windows drops it when the script exits.
ToggleCaffeine() {
    static ES_CONTINUOUS := 0x80000000, ES_SYSTEM_REQUIRED := 1, ES_DISPLAY_REQUIRED := 2
    global caffeineOn := !caffeineOn
    DllCall("SetThreadExecutionState", "UInt"
        , ES_CONTINUOUS | (caffeineOn ? ES_SYSTEM_REQUIRED | ES_DISPLAY_REQUIRED : 0))
    TrayTip(caffeineOn ? "Staying awake" : "Normal sleep", "Caffeine", 1)
    UpdateTray()
}

; niri's hotkey overlay. Alt+Shift+/ again, or Escape (CapsLock), closes it.
ToggleKeySheet() {
    global keySheet
    if !keySheet
        keySheet := CreateKeySheet()
    if WinExist("ahk_id " keySheet.Hwnd)
        keySheet.Hide()
    else
        keySheet.Show("Center")
}

CreateKeySheet() {
    g := Gui("+AlwaysOnTop -Caption +ToolWindow +Border")
    g.BackColor := "000000"
    g.MarginX := 20, g.MarginY := 16
    g.SetFont("s10 cF8F2F5", "Consolas")
    g.SetFont(, "JetBrains Mono")
    g.Add("Text",, KEY_SHEET)
    g.OnEvent("Escape", (*) => g.Hide())
    return g
}

KEY_SHEET := "
(
Alt is niri's Mod: the same physical key.

WINDOWS                              APPS
Alt+H/J/K/L        focus             Alt+Enter          terminal
Alt+Ctrl+H/J/K/L   move              Alt+Shift+Enter    new terminal
Alt+Shift+H/J/K/L  resize            Alt+G / +Shift     Zen / new window
Alt+Shift+R        resize mode       Alt+R, Alt+Y       Files
Alt+Q              close             Alt+S              Claude
Alt+F              maximize          Alt+B              SumatraPDF
Alt+Shift+F        fullscreen        Alt+;              Settings
Alt+Space          float / tile      Alt+D              Flow Launcher
Alt+Ctrl+Space     float <> tile     Alt+C              Ditto clipboard
Alt+M              centre floating   Alt+X              Task Manager
Alt+Shift+M        minimize          Alt+E              emoji
Alt+T              split direction   Alt+V              screenshot
Alt+P              tile              Alt+F8             stop/start this script
Alt+Shift+W        redraw

WORKSPACES                           SYSTEM
Alt+1..0           go                Alt+CapsLock       lock
Alt+Shift+1..0     take window       Alt+Shift+B        screens off
Alt+Ctrl+1..0      send, stay        Alt+Ctrl+I         caffeine
Alt+``              previous one      Alt+Shift+Bksp     notifications
Alt+[ / ]          prev / next       Alt+Shift+C        reload GlazeWM
Alt+Ctrl+Shift+J/K send next / prev  Alt+\              pause GlazeWM
Alt+H / L at edge   next monitor     Alt+F7 / F9        restart Zebar / GlazeWM
                                     Alt+Shift+E        quit GlazeWM
)"

#HotIf ShouldRemap()
!+b:: ScreensOff()
!^i:: ToggleCaffeine()
!+/:: ToggleKeySheet()
#HotIf
