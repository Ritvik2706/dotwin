import { NVIDIA_APP, NVIDIA_CONTROL_PANEL_URI } from '../../config.js';
import { launch, openUri } from '../../lib/commands.js';

/**
 * Turns the systray provider's icons into tray items:
 *   { id?, key, tooltip, iconUrl, left, right, middle?, enter?, leave? }
 * where the functions forward clicks/hovers to the owning app.
 */

const GUID_RE = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

/**
 * Stable key for saving an icon's position: its GUID when the app provides
 * one, otherwise its tooltip text (window-handle IDs change every time the app
 * restarts).
 */
function trayKey(icon) {
    if (GUID_RE.test(icon.id)) return icon.id;
    // Drop counters/percentages ("Discord - 3 unread", "Battery 80%") so the key stays stable.
    const name = (icon.tooltip ?? '').split('\n')[0]
        .replace(/[\d%]+/g, '')
        .replace(/\s+/g, ' ')
        .trim()
        .toLowerCase();
    return name ? `tip:${name}` : icon.id;
}

/**
 * NVIDIA's tray icon belongs to an elevated process, which ignores the
 * TaskbarCreated broadcast Zebar uses to collect existing icons. Stand in for it.
 */
function nvidiaItem() {
    return {
        key: 'custom:nvidia',
        tooltip: 'NVIDIA Settings — click: NVIDIA App, right-click: NVIDIA Control Panel',
        iconUrl: './nvidia.png',
        left: () => launch(NVIDIA_APP),
        right: () => openUri(NVIDIA_CONTROL_PANEL_URI),
    };
}

export function trayItems(systray) {
    // Two icons can share a tooltip. Keys must stay unique, or React and the saved
    // layout treat them as one icon; the first keeps the plain key, so saved
    // positions still apply.
    const seen = new Map();
    const uniqueKey = key => {
        const count = (seen.get(key) ?? 0) + 1;
        seen.set(key, count);
        return count === 1 ? key : `${key}#${count}`;
    };
    const items = (systray?.icons ?? []).map(icon => ({
        id: icon.id,
        key: uniqueKey(trayKey(icon)),
        tooltip: icon.tooltip,
        iconUrl: icon.iconUrl,
        left: () => systray.onLeftClick(icon.id),
        right: () => systray.onRightClick(icon.id),
        middle: () => systray.onMiddleClick(icon.id),
        enter: () => systray.onHoverEnter(icon.id),
        leave: () => systray.onHoverLeave(icon.id),
    }));
    if (!items.some(item => /nvidia/i.test(item.tooltip ?? ''))) {
        items.push(nvidiaItem());
    }
    return items;
}
