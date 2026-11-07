; ── Games: the whole desktop setup quits while one runs ──
; GlazeWM, Zebar and this script all stop for a game and come back after it.
; That leaves nothing running that an anti-cheat could flag, nothing to fight
; the game for focus, and a clean start at the normal resolution afterwards.
;
; A game is: a process in anticheat-games.txt, or any focused window
; IsGameWindow recognises, unless it's in notGames. relaunch-after-game.ps1 does
; the stopping and the restarting, so this script can exit at once: QuitForGame
; never waits on anything. GlazeWM starts Zebar itself (startup_commands).
;
; Quitting skips the exit clean-up that would show the taskbar (EXIT_FOR_GAME),
; so it stays on auto-hide, where a click on it still switches windows.

EXIT_FOR_GAME   := 2
antiCheatGames  := MakeSet(ReadGameList(A_ScriptDir "\anticheat-games.txt"))
RELAUNCH_SCRIPT := A_ScriptDir "\relaunch-after-game.ps1"

GAME_WINDOW_CLASSES := "^(UnrealWindow|UnityWndClass|SDL_app)$"

; In steamapps or built on a game engine, but not games.
notGames := MakeSet(["wallpaper32.exe", "wallpaper64.exe", "ui32.exe", "UnrealEditor.exe", "Unity.exe"])

; Called at startup, in case a game is already open.
StartGameWatch() {
    entry := FindProcessEntry((pid, name) => antiCheatGames.Has(name) && !IsShaderPreload(pid))
    if entry
        QuitForGame(entry.name)
}

; Battle.net runs cod.exe windowless with +ogu_mode to preload shaders. Quitting
; for it would take the desktop down for minutes with no game open, and
; relaunch-after-game.ps1 ignores it too, or the two would restart each other.
IsShaderPreload(pid) {
    try {
        for proc in ComObjGet("winmgmts:").ExecQuery("SELECT CommandLine FROM Win32_Process WHERE ProcessId=" pid)
            return InStr(proc.CommandLine, "+ogu_mode") > 0
    }
    return false
}

; From WindowEvents.ahk, for every created or focused window.
OnGameWindow(proc) {
    if antiCheatGames.Has(proc)
        QuitForGame(proc)
}

; From WindowEvents.ahk, for focused windows only: a game's helper windows
; shouldn't count just for being created.
OnGameFocused(proc, hwnd) {
    if !notGames.Has(proc) && IsGameWindow(hwnd)
        QuitForGame(proc)
}

; A game engine's window class, or anything installed by Steam.
IsGameWindow(hwnd) {
    prev := DetectHiddenWindows(true)
    try {
        if WinGetClass("ahk_id " hwnd) ~= GAME_WINDOW_CLASSES
            return true
        return InStr(WinGetProcessPath("ahk_id " hwnd), "\steamapps\common\") > 0
    } catch {
        return false   ; anti-cheat denied the path; those games are listed by name
    } finally {
        DetectHiddenWindows(prev)
    }
}

QuitForGame(proc) {
    static quitting := false
    if quitting
        return
    quitting := true
    try Run('powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -WindowStyle Hidden -File "'
        RELAUNCH_SCRIPT '" -Script "' A_ScriptFullPath '" -Game "' proc '"',, "Hide")
    ExitApp(EXIT_FOR_GAME)
}

; Process names from the list file: one per line, # starts a comment.
ReadGameList(path) {
    names := []
    try text := FileRead(path)
    catch
        return names
    loop parse text, "`n", "`r" {
        name := Trim(RegExReplace(A_LoopField, "(^|\s+)#.*$"))
        if name != ""
            names.Push(name)
    }
    return names
}
