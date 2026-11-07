import { useEffect, useRef, useState } from 'react';
import { loadStore, setStoreValue } from '../../lib/store.js';

/**
 * The user's tray arrangement: icon order and which icons are hidden behind
 * the chevron, as lists of tray keys.
 *
 * Saved to the persistent store (lib/store.js). localStorage is only a fast
 * first-paint cache: WebView2 drops it when Zebar exits.
 */
const STORE_KEYS = { order: 'trayOrder', hidden: 'trayHidden' };
const LOCAL_KEYS = { order: 'tray.order', hidden: 'tray.hidden' };

function loadLocal(key) {
    try {
        return JSON.parse(localStorage.getItem(key)) ?? [];
    } catch {
        return [];
    }
}

function saveLocal(key, value) {
    try {
        localStorage.setItem(key, JSON.stringify(value));
    } catch {
        // Storage unavailable; the persistent store still has it.
    }
}

/** One persisted list: [value, set]. */
function usePersistedList(name) {
    const [value, setValue] = useState(() => loadLocal(LOCAL_KEYS[name]));
    const touched = useRef(false);

    useEffect(() => {
        loadStore().then(store => {
            // A slow store load mustn't clobber a change the user already made.
            if (touched.current) return;
            if (Array.isArray(store[STORE_KEYS[name]])) setValue(store[STORE_KEYS[name]]);
        });
    }, []);

    const set = next => {
        touched.current = true;
        setValue(next);
        saveLocal(LOCAL_KEYS[name], next);
        setStoreValue(STORE_KEYS[name], next);
    };

    return [value, set];
}

/**
 * Arranges `items` and returns:
 *   sorted                 all items in saved order
 *   visible, hidden        the two groups
 *   setHidden(key, bool)   move an item into/out of the hidden group
 *   setOrder(keys)         save a new order for the running icons
 */
export function useTrayLayout(items) {
    const [order, saveOrder] = usePersistedList('order');
    const [hiddenKeys, saveHidden] = usePersistedList('hidden');

    // Saved order first; icons never placed keep the provider's order after them.
    const rank = (item, i) => {
        const idx = order.indexOf(item.key);
        return idx === -1 ? order.length + i : idx;
    };
    const sorted = items
        .map((item, i) => ({ item, r: rank(item, i) }))
        .sort((a, b) => a.r - b.r)
        .map(({ item }) => item);

    const isHidden = key => hiddenKeys.includes(key);

    const setHidden = (key, value) => {
        const rest = hiddenKeys.filter(k => k !== key);
        saveHidden(value ? [...rest, key] : rest);
    };

    // Keep positions of icons that aren't running right now.
    const setOrder = keys => saveOrder([...keys, ...order.filter(k => !keys.includes(k))]);

    return {
        sorted,
        visible: sorted.filter(item => !isHidden(item.key)),
        hidden: sorted.filter(item => isHidden(item.key)),
        setHidden,
        setOrder,
    };
}
