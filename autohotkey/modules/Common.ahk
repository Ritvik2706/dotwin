; ── Shared: app paths, window messages, process list ─────
; Used by more than one module. Everything else lives in the module
; that owns it.

GLAZE_EXE := "C:\Program Files\glzr.io\GlazeWM\glazewm.exe"
GLAZE_CLI := "C:\Program Files\glzr.io\GlazeWM\cli\glazewm.exe"
ZEBAR_EXE := "C:\Program Files\glzr.io\Zebar\zebar.exe"

WM_DISPLAYCHANGE  := 0x7E
WM_TASKBARCREATED := DllCall("RegisterWindowMessage", "Str", "TaskbarCreated", "UInt")  ; Explorer restarted

; Case-insensitive lookup set: MakeSet(["a.exe"]).Has("A.EXE") is true.
MakeSet(items) {
    set := Map()
    set.CaseSense := "Off"
    for item in items
        set[item] := true
    return set
}

; Name of the process with this PID, or "". Reads the process list, so
; unlike WinGetProcessName it works when the process can't be opened.
ProcessNameOf(pid) {
    entry := FindProcessEntry((p, name) => p = pid)
    return entry ? entry.name : ""
}

; First {pid, name} in one snapshot of the process list for which
; match(pid, name) is true, or 0.
FindProcessEntry(match) {
    static TH32CS_SNAPPROCESS := 2
    static ENTRY_SIZE := 568, PID_OFFSET := 8, NAME_OFFSET := 44   ; PROCESSENTRY32W (x64)
    snapshot := DllCall("CreateToolhelp32Snapshot", "UInt", TH32CS_SNAPPROCESS, "UInt", 0, "Ptr")
    entry := Buffer(ENTRY_SIZE, 0)
    NumPut("UInt", ENTRY_SIZE, entry)
    found := 0
    if DllCall("Process32FirstW", "Ptr", snapshot, "Ptr", entry) {
        loop {
            pid  := NumGet(entry, PID_OFFSET, "UInt")
            name := StrGet(entry.Ptr + NAME_OFFSET, "UTF-16")
            if match(pid, name) {
                found := {pid: pid, name: name}
                break
            }
        } until !DllCall("Process32NextW", "Ptr", snapshot, "Ptr", entry)
    }
    DllCall("CloseHandle", "Ptr", snapshot)
    return found
}
