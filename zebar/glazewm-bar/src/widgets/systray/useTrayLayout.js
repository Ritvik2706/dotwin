import { useEffect, useRef, useState } from 'react';
import { loadStore, setStoreValue } from '../../lib/store.js';

/**
 * The user's tray arrangement: icon order, and which icons are pinned to the bar
 * (everything else lives in the tray panel), as lists of tray keys.
 *
 * Saved to the persistent store (lib/store.js). localStorage is only a fast
 * first-paint cache: WebView2 drops it when Zebar exits. Only the bar keeps it;
 * the panel window sends its changes here (trayLink.js).
 */
const STORE_KEYS = { order: 'trayOrder', pinned: 'trayPinned' };
const LOCAL_KEYS = { order: 'tray.order', pinned: 'tray.pinned' };

function loadLocal(key, fallback) {
    try {
        return JSON.parse(localStorage.getItem(key)) ?? fallback;
    } catch {
        return fallback;
    }
}

function saveLocal(key, value) {
    try {
        localStorage.setItem(key, JSON.stringify(value));
    } catch {
        // Storage unavailable; the persistent store still has it.
    }
}

/**
 * The old layout saved hidden icons and a "collapsed" switch. Expanded, every
 * icon not hidden was on the bar, so those become the pinned ones.
 */
function migratePinned(store) {
    if (store.trayCollapsed !== false || !Array.isArray(store.trayOrder)) return [];
    const hidden = Array.isArray(store.trayHidden) ? store.trayHidden : [];
    return store.trayOrder.filter(key => !hidden.includes(key));
}

/** One persisted list: [value, set]. */
function usePersistedList(name, migrate) {
    const [value, setValue] = useState(() => {
        const local = loadLocal(LOCAL_KEYS[name], null);
        return Array.isArray(local) ? local : [];
    });
    const touched = useRef(false);

    useEffect(() => {
        loadStore().then(store => {
            // A slow store load mustn't clobber a change the user already made.
            if (touched.current) return;
            const saved = store[STORE_KEYS[name]];
            if (Array.isArray(saved)) setValue(saved);
            else if (migrate) set(migrate(store));
        });
    }, []);

    function set(next) {
        touched.current = true;
        setValue(next);
        saveLocal(LOCAL_KEYS[name], next);
        setStoreValue(STORE_KEYS[name], next);
    }

    return [value, set];
}

/**
 * Arranges `items` and returns:
 *   sorted                     all items in saved order
 *   pinned, unpinned           the bar's icons and the panel's
 *   setPinned(key, bool)       pin to the bar / move into the panel
 *   place(key, target, after, pinned)
 *                              move `key` next to `target` (or to the end when
 *                              null), into the bar or the panel
 */
export function useTrayLayout(items) {
    const [order, saveOrder] = usePersistedList('order');
    const [pinnedKeys, savePinned] = usePersistedList('pinned', migratePinned);

    // Saved order first; icons never placed keep the provider's order after them.
    const rank = (item, i) => {
        const idx = order.indexOf(item.key);
        return idx === -1 ? order.length + i : idx;
    };
    const sorted = items
        .map((item, i) => ({ item, r: rank(item, i) }))
        .sort((a, b) => a.r - b.r)
        .map(({ item }) => item);

    const isPinned = key => pinnedKeys.includes(key);

    const setPinned = (key, value) => {
        if (isPinned(key) === value) return;
        const rest = pinnedKeys.filter(k => k !== key);
        savePinned(value ? [...rest, key] : rest);
    };

    const place = (key, target, after, pinned) => {
        const keys = sorted.map(item => item.key).filter(k => k !== key);
        const at = target ? keys.indexOf(target) : -1;
        if (at === -1) keys.push(key);
        else keys.splice(at + (after ? 1 : 0), 0, key);
        // Keep positions of icons that aren't running right now.
        saveOrder([...keys, ...order.filter(k => !keys.includes(k))]);
        setPinned(key, pinned);
    };

    return {
        sorted,
        pinned: sorted.filter(item => isPinned(item.key)),
        unpinned: sorted.filter(item => !isPinned(item.key)),
        setPinned,
        place,
    };
}

/** Applies a drop found by useTrayDrag's hit test to the layout. */
export function applyDrop(layout, key, hit) {
    if (hit.zone) layout.place(key, null, false, hit.zone === 'pinned');
    else if (hit.overKey && hit.overKey !== key) layout.place(key, hit.overKey, hit.after, hit.overPinned);
}
