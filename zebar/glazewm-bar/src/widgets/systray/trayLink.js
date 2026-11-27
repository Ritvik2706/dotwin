import { usePanel } from '../../lib/panelLink.js';

/**
 * The link between the bar and the tray panel (src/tray/), a drop-down window
 * under the arrow (lib/panelLink.js has the mechanics).
 *
 * The bar owns the systray provider, dead-icon checks and the saved layout, so
 * there's one systray provider (one hidden Shell_TrayWnd) and one writer of the
 * saved layout. It sends the panel { items } and gets back actions:
 * { type: left|right|middle|double|enter|leave, key }, { type: 'pin', key, pinned },
 * { type: 'drop', key, hit }.
 */

/** What the panel needs to draw an icon. */
const snapshotOf = entries => entries.map(({ item, pinned }) => ({
    key: item.key,
    tooltip: item.tooltip ?? '',
    iconUrl: item.iconUrl,
    pinned,
}));

/**
 * `entries` is [{ item, pinned }] in order; `onAction(action)` runs what the
 * panel asks for. Returns { open, toggle(arrowEl), close() }.
 */
export function useTrayPanel(entries, onAction) {
    const items = snapshotOf(entries);
    return usePanel('tray', {
        state: { items },
        // Icons are data URLs: compare the fields, not a JSON of the whole thing.
        signature: items.map(s => `${s.key}|${s.pinned}|${s.tooltip}|${s.iconUrl}`).join('\n'),
        onAction,
        align: 'right',
    });
}
