/**
 * Machine-specific paths and settings. Anything the bar launches outside
 * Zebar must also be allowed by a `shellCommands` privilege in zpack.json.
 */

// Where deploy.sh installs the pack (dotwin: zebar/glazewm-bar/).
export const PACK_DIR = 'C:\\Users\\Ritvik\\AppData\\Roaming\\zebar\\downloads\\ritvik.glazewm-bar@1.0.0';

// The PowerShell helpers from scripts/, run via lib/commands.js runScript().
export const SCRIPTS_DIR = `${PACK_DIR}\\scripts`;

// One-shot bridge to CapsEscSwap.ahk (dotwin: autohotkey/taskbar.ahk), used to
// hide/show the Windows taskbar and to focus windows while GlazeWM is paused.
export const AUTOHOTKEY_EXE = 'C:\\Program Files\\AutoHotkey\\v2\\AutoHotkey64.exe';
export const TASKBAR_AHK = 'C:\\Users\\Ritvik\\Documents\\AutoHotkey\\taskbar.ahk';
// Same idea for monitor brightness over DDC/CI (dotwin: autohotkey/brightness.ahk).
export const BRIGHTNESS_AHK = 'C:\\Users\\Ritvik\\Documents\\AutoHotkey\\brightness.ahk';

// NVIDIA's own tray icon runs elevated, so Zebar can't pick it up; the tray
// shows a stand-in (public/nvidia.png) that opens these.
export const NVIDIA_APP = 'C:\\Program Files\\NVIDIA Corporation\\NVIDIA App\\CEF\\NVIDIA App.exe';
export const NVIDIA_CONTROL_PANEL_URI = 'shell:AppsFolder\\NVIDIACorp.NVIDIAControlPanel_56jybvy8sckqj!NVIDIACorp.NVIDIAControlPanel';

// Workspaces bound to each monitor in glazewm/config.yaml. With two monitors
// the bar shows only the focused monitor's set; with one it shows them all.
export const PRIMARY_MONITOR_WORKSPACES = { first: 1, last: 6 };
