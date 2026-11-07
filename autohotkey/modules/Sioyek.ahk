; ── Sioyek: black titlebar via DWMWA_CAPTION_COLOR ───────
; Applied when a Sioyek window is created or focused (WindowEvents.ahk),
; plus once at startup for windows that are already open.

StartSioyekTitlebar() {
    for hwnd in WinGetList("ahk_exe sioyek.exe")
        ApplySioyekCaptionColor(hwnd)
}

ApplySioyekCaptionColor(hwnd) {
    static DWMWA_CAPTION_COLOR := 35
    black := 0x000000
    DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", hwnd, "UInt", DWMWA_CAPTION_COLOR, "UInt*", &black, "UInt", 4)
}
