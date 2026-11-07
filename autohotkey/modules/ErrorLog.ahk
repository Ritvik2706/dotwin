; ── Errors: to a file, never a dialog ────────────────────
; AutoHotkey's default for an uncaught error is a modal box, which takes
; focus from a game mid-match. Included first and registered straight away
; (the one exception to "side effects run from Startup"), so errors from the
; rest of the auto-execute section are caught too. Syntax errors still show
; a dialog, but those stop the script at load, not during a game.

ERROR_LOG     := A_ScriptDir "\errors.log"
ERROR_LOG_MAX := 256 * 1024

OnError(LogError)

; Returns 1: don't show the dialog; the failed thread ends, the script carries on.
LogError(err, mode) {
    try {
        if FileExist(ERROR_LOG) && FileGetSize(ERROR_LOG) > ERROR_LOG_MAX
            FileMove(ERROR_LOG, A_ScriptDir "\errors.old.log", true)
        FileAppend(Format("{} {}:{} {}: {} {}`n", FormatTime(, "yyyy-MM-dd HH:mm:ss")
            , err.File, err.Line, Type(err), err.Message, err.Extra), ERROR_LOG, "UTF-8")
    }
    return 1
}
