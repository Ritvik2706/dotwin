; ── CapsLock ⇄ Escape, and the remap switch — Win+F1 ─────
; ShouldRemap() also gates the app hotkeys. Games need no gate of their own:
; this whole script quits for them (AntiCheatGames.ahk).

remapsActive := true

ShouldRemap() => remapsActive

ToggleRemaps() {
    global remapsActive := !remapsActive
    TrayTip(remapsActive ? "Remaps ON" : "Remaps OFF", "Keyboard Remaps", 1)
    UpdateTray()
}

#F1:: ToggleRemaps()

*CapsLock:: {
    if !ShouldRemap()
        Send("{Blind}{CapsLock}")
    else if GetKeyState("Alt", "P")
        LockSession()   ; niri's Mod+Escape: same physical keys
    else
        Send("{Blind}{Escape}")
}

*Escape:: {
    if ShouldRemap()
        SetCapsLockState(!GetKeyState("CapsLock", "T"))
    else
        Send("{Blind}{Escape}")
}
