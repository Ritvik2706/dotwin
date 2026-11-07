/**
 * Whether CapsEscSwap.ahk is running, from its tray icon in the systray
 * provider (its tooltip starts with this prefix; see autohotkey/modules/Tray.ahk).
 *
 * The bar checks this before launching taskbar.ahk / brightness.ahk: with the
 * script gone the bridges have nothing to talk to. Until the systray provider
 * has reported, it counts as not running, so no AutoHotkey process is ever
 * started on a guess.
 */
const TRAY_TOOLTIP_PREFIX = 'CapsLock Remap';

export function isAhkRunning(systray) {
    return (systray?.icons ?? []).some(icon => icon.tooltip?.startsWith(TRAY_TOOLTIP_PREFIX));
}
