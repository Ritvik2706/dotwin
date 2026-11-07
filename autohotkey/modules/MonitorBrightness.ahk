; ── Monitor brightness (DDC/CI) — Alt + volume knob ──────
; Talks to the monitor through dxva2.dll in-process — no window, no
; PowerShell, no focus change. DDC/CI is slow
; (~50 ms per call), so knob ticks accumulate in brightPending and one
; worker applies them; a fast spin never queues up writes. The monitor's
; own DDC/CI option must be on (MSI OSD menu). brightness.ahk reads/steps
; it for the Zebar bar (WM_BRIGHTNESS).

BRIGHT_STEP      := 5      ; % per knob tick
BRIGHT_CACHE_MS  := 2000   ; trust our last-set value this long (some monitors report stale reads)
BRIGHT_REREAD_MS := 30000  ; bar queries re-read the monitor this often (catches OSD-menu changes)
brightPending    := 0
brightBusy       := false
brightCache      := Map()  ; "hMon:index" → {value, tick}
brightLevel      := -1     ; last known level 0–100, -1 = unknown / no DDC/CI
brightReadTick   := 0

; WM_APP+2 from brightness.ahk: wParam 0 = query, 1 = up, 2 = down.
; Replies level + 1 (1–101), or 0 when no monitor answers DDC/CI.
WM_BRIGHTNESS := 0x8002

StartBrightness() {
    OnMessage(WM_BRIGHTNESS, OnBrightnessMessage)
}

!Volume_Up::   QueueBrightness(+BRIGHT_STEP)
!Volume_Down:: QueueBrightness(-BRIGHT_STEP)

QueueBrightness(delta) {
    global brightPending
    brightPending += delta
    SetTimer(ApplyBrightness, -1)
}

ApplyBrightness() {
    global brightPending, brightBusy, brightLevel, brightReadTick
    if brightBusy  ; the running worker's loop will pick up the new ticks
        return
    brightBusy := true
    try {
        while brightPending {
            delta := brightPending
            brightPending := 0
            level := AdjustAllMonitors(delta)
        }
        if IsSet(level) && level >= 0 {
            brightLevel    := level
            brightReadTick := A_TickCount
            ShowBrightnessOsd(level)
        }
    }
    brightBusy := false
}

OnBrightnessMessage(wParam, lParam, *) {
    global brightLevel, brightReadTick, brightBusy
    if wParam = 1 || wParam = 2 {
        delta := wParam = 1 ? BRIGHT_STEP : -BRIGHT_STEP
        QueueBrightness(delta)  ; applied after we reply; answer with the expected level
        return brightLevel < 0 ? 0 : Max(0, Min(100, brightLevel + delta)) + 1
    }
    ; Failed reads wait too: this blocks the script's hotkeys while the monitor answers.
    if !brightBusy && (!brightReadTick || A_TickCount - brightReadTick > BRIGHT_REREAD_MS) {
        brightBusy := true
        try brightLevel := AdjustAllMonitors(0)
        brightReadTick := A_TickCount
        brightBusy := false
        if brightPending   ; knob ticks that arrived during the read
            SetTimer(ApplyBrightness, -1)
    }
    return brightLevel + 1
}

; Steps every DDC/CI monitor by delta (0 only reads). Returns the last
; level set (0–100), or -1 if no monitor answered.
AdjustAllMonitors(delta) {
    static PM_SIZE := A_PtrSize + 256  ; PHYSICAL_MONITOR { HANDLE; WCHAR[128] }
    hMons := []
    cb := CallbackCreate((hMon, *) => (hMons.Push(hMon), 1), "F", 4)
    DllCall("EnumDisplayMonitors", "Ptr", 0, "Ptr", 0, "Ptr", cb, "Ptr", 0)
    CallbackFree(cb)

    level := -1
    for hMon in hMons {
        if !DllCall("dxva2\GetNumberOfPhysicalMonitorsFromHMONITOR", "Ptr", hMon, "UInt*", &n := 0) || !n
            continue
        buf := Buffer(n * PM_SIZE, 0)
        if !DllCall("dxva2\GetPhysicalMonitorsFromHMONITOR", "Ptr", hMon, "UInt", n, "Ptr", buf)
            continue
        loop n {
            h   := NumGet(buf, (A_Index - 1) * PM_SIZE, "Ptr")
            key := hMon ":" A_Index
            if !DllCall("dxva2\GetMonitorBrightness", "Ptr", h, "UInt*", &mn := 0, "UInt*", &cur := 0, "UInt*", &mx := 0)
                continue  ; no DDC/CI on this one
            if brightCache.Has(key) && A_TickCount - brightCache[key].tick < BRIGHT_CACHE_MS
                cur := brightCache[key].value
            new := Max(mn, Min(mx, cur + delta))
            if !delta
                level := Round((cur - mn) * 100 / Max(1, mx - mn))
            else if DllCall("dxva2\SetMonitorBrightness", "Ptr", h, "UInt", new) {
                brightCache[key] := {value: new, tick: A_TickCount}
                level := Round((new - mn) * 100 / Max(1, mx - mn))
            }
        }
        DllCall("dxva2\DestroyPhysicalMonitors", "UInt", n, "Ptr", buf)
    }
    return level
}

; ── Brightness OSD ───────────────────────────────────────
; [☀ ━━━━━━──── 60%] under the Zebar bar, in the bar's colours
; (theme.css). Never takes focus or clicks, and is skipped over
; fullscreen windows (games) so nothing draws on top of them.

OSD_W := 240, OSD_H := 40, OSD_TRACK_X := 40, OSD_TRACK_W := 148, OSD_HIDE_MS := 1500
brightOsd := 0   ; created on first use

ShowBrightnessOsd(level) {
    global brightOsd
    try {
        WinGetPos(&x, &y, &w, &h, "A")
        if x <= 0 && y <= 0 && w >= A_ScreenWidth && h >= A_ScreenHeight
            return
    }
    if !brightOsd
        brightOsd := CreateBrightnessOsd()
    fillW := Round(OSD_TRACK_W * level / 100)
    brightOsd.fill.Move(OSD_TRACK_X, , fillW)
    brightOsd.rest.Move(OSD_TRACK_X + fillW, , OSD_TRACK_W - fillW)
    brightOsd.pct.Value := level "%"
    MonitorGetWorkArea(MonitorGetPrimary(), &l, &t, &r)
    brightOsd.Show("NoActivate x" (l + (r - l - OSD_W) // 2) " y" (t + 12) " w" OSD_W " h" OSD_H)
    SetTimer(HideBrightnessOsd, -OSD_HIDE_MS)  ; same func → re-arms rather than stacking
}

HideBrightnessOsd() {
    if brightOsd
        brightOsd.Hide()
}

CreateBrightnessOsd() {
    ; E0x08000020: WS_EX_NOACTIVATE | WS_EX_TRANSPARENT (click-through once layered)
    g := Gui("+AlwaysOnTop -Caption +ToolWindow -DPIScale +E0x08000020")
    g.BackColor := "000000"
    g.MarginX := 0, g.MarginY := 0
    ; 1px border in the island border colour, as four strips (overlapping
    ; static controls don't paint reliably)
    for r in [[0, 0, OSD_W, 1], [0, OSD_H - 1, OSD_W, 1], [0, 0, 1, OSD_H], [OSD_W - 1, 0, 1, OSD_H]]
        g.Add("Text", Format("x{} y{} w{} h{} Background3A3940", r*))
    ; Brightness glyph (U+E706): Segoe Fluent Icons on Win11, MDL2 as fallback
    g.SetFont("s13 cD9D7DF", "Segoe MDL2 Assets")
    g.SetFont(, "Segoe Fluent Icons")
    g.Add("Text", "x12 y1 w24 h" (OSD_H - 2) " +0x200 BackgroundTrans", Chr(0xE706))
    ; Track: filled part + remainder side by side
    barY := OSD_H // 2 - 2
    g.fill := g.Add("Text", Format("x{} y{} w0 h4 BackgroundD9D7DF", OSD_TRACK_X, barY))
    g.rest := g.Add("Text", Format("x{} y{} w{} h4 Background26252A", OSD_TRACK_X, barY, OSD_TRACK_W))
    g.SetFont("s10 cF8F2F5 w700", "Segoe UI")
    g.SetFont(, "JetBrains Mono")
    g.pct := g.Add("Text", Format("x{} y1 w{} h{} Right +0x200 BackgroundTrans",
        OSD_TRACK_X + OSD_TRACK_W + 4, OSD_W - OSD_TRACK_X - OSD_TRACK_W - 16, OSD_H - 2), "100%")
    WinSetTransparent(240, g)
    return g
}
