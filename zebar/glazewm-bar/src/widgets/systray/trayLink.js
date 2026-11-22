import { useEffect, useRef, useState } from 'react';
import { emit, listen } from '@tauri-apps/api/event';
import { currentWidget, startWidgetPreset } from 'zebar';

/**
 * The link between the bar and the tray panel (src/tray/), a second Zebar
 * widget window ("tray" in zpack.json) that drops down under the arrow.
 *
 * The bar owns everything: the systray provider, dead-icon checks and the saved
 * layout. It sends the panel a snapshot of the icons, and the panel sends back
 * what the user did (clicks, hovers, pins, drops). So there's one systray
 * provider (one hidden Shell_TrayWnd) and one writer of the saved layout.
 *
 * The panel window is started once, hidden, and then only shown and hidden, so
 * it opens instantly. It reloads itself when the bar is from a newer build.
 *
 *   bar  -> panel   hello {build}, state {items}, open {anchor, items}, close
 *   panel -> bar    ready {build}, shown, hidden, action {type, key, hit?}
 */
export const EV = {
    hello: 'ritvik-tray:hello',
    ready: 'ritvik-tray:ready',
    state: 'ritvik-tray:state',
    open: 'ritvik-tray:open',
    close: 'ritvik-tray:close',
    shown: 'ritvik-tray:shown',
    hidden: 'ritvik-tray:hidden',
    action: 'ritvik-tray:action',
};

// Unique per build (vite.config.js), so a stale panel can tell it must reload.
export const BUILD = __TRAY_BUILD__;

const START_AFTER_MS = 1500;   // no panel answered hello: start one
const REOPEN_GUARD_MS = 300;   // the click that blurred the panel shouldn't reopen it

const send = (event, payload) => emit(event, payload).catch(err => console.error(`tray: ${event}`, err));

/** What the panel needs to draw an icon. */
const snapshotOf = items => items.map(({ item, pinned }) => ({
    key: item.key,
    tooltip: item.tooltip ?? '',
    iconUrl: item.iconUrl,
    pinned,
}));

/**
 * Bar side. `entries` is [{ item, pinned }] in order; `onAction(action)` runs
 * what the panel asks for. Returns { open, toggle(anchorEl), close() }.
 */
export function useTrayPanel(entries, onAction) {
    const [open, setOpen] = useState(false);
    const ready = useRef(false);
    const started = useRef(false);
    const pendingOpen = useRef(null);
    const hiddenAt = useRef(0);
    const snapshot = snapshotOf(entries);
    const latest = useRef({ snapshot, onAction });
    latest.current = { snapshot, onAction };

    const startPanel = () => {
        if (started.current) return;
        started.current = true;
        startWidgetPreset('tray', 'default').catch(err => {
            started.current = false;
            console.error('tray: could not start the panel widget', err);
        });
    };

    useEffect(() => {
        const unlisten = [
            listen(EV.ready, ({ payload }) => {
                // An older panel reloads itself when it hears our hello.
                if (payload?.build !== BUILD) return void send(EV.hello, { build: BUILD });
                ready.current = true;
                started.current = true;
                send(EV.state, { items: latest.current.snapshot });
                if (pendingOpen.current) {
                    send(EV.open, { anchor: pendingOpen.current, items: latest.current.snapshot });
                    pendingOpen.current = null;
                }
            }),
            listen(EV.shown, () => setOpen(true)),
            listen(EV.hidden, () => {
                hiddenAt.current = Date.now();
                setOpen(false);
            }),
            listen(EV.action, ({ payload }) => latest.current.onAction(payload)),
        ];
        send(EV.hello, { build: BUILD });
        const timer = setTimeout(() => {
            if (!ready.current) startPanel();
        }, START_AFTER_MS);
        return () => {
            clearTimeout(timer);
            unlisten.forEach(p => p.then(fn => fn()));
        };
    }, []);

    // Keep the panel's copy current; it only redraws while open.
    const signature = snapshot.map(s => `${s.key}|${s.pinned}|${s.tooltip}|${s.iconUrl}`).join('\n');
    useEffect(() => {
        if (ready.current) send(EV.state, { items: snapshot });
    }, [signature]);

    const close = () => send(EV.close);

    const toggle = async anchorEl => {
        if (open) return close();
        if (Date.now() - hiddenAt.current < REOPEN_GUARD_MS) return;
        // Screen position, in physical pixels, of the arrow's right edge and the
        // bar's bottom; the panel hangs from there, inside the bar's monitor.
        const win = currentWidget().tauriWindow;
        const [pos, size, scale] = await Promise.all([win.outerPosition(), win.outerSize(), win.scaleFactor()]);
        const rect = anchorEl.getBoundingClientRect();
        const anchor = {
            right: Math.round(pos.x + rect.right * scale),
            top: pos.y + size.height,
            monitorLeft: pos.x,
            monitorRight: pos.x + size.width,
        };
        if (ready.current) {
            send(EV.open, { anchor, items: latest.current.snapshot });
        } else {
            pendingOpen.current = anchor;
            startPanel();
        }
    };

    return { open, toggle, close };
}
