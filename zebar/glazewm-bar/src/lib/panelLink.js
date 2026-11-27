import { useEffect, useLayoutEffect, useRef, useState } from 'react';
import { emit, listen } from '@tauri-apps/api/event';
import { currentWidget, startWidgetPreset } from 'zebar';

/**
 * Drop-down panels: second Zebar widget windows that hang under a bar button
 * (the tray under its arrow, the start panel under the sigil). Each is a widget
 * in zpack.json, named like the panel, with its own html entry.
 *
 * The bar owns everything: providers, saved state, and every command. It sends
 * the panel a `state` snapshot, and the panel sends back what the user did as
 * `action`s. So a panel needs no providers or privileges of its own.
 *
 * A panel window is started once, hidden, and then only shown and hidden, so it
 * opens instantly. It reloads itself when the bar is from a newer build.
 *
 *   bar   -> panel   hello {build}, state {state}, open {anchor, state}, close
 *   panel -> bar     ready {build}, shown, hidden, action {...}
 *
 * Events are named `ritvik-<panel>:<event>`.
 */

// Unique per build (vite.config.js), so a stale panel can tell it must reload.
export const BUILD = __BAR_BUILD__;

const START_AFTER_MS = 1500;   // no panel answered hello: start one
const REOPEN_GUARD_MS = 300;   // the click that blurred the panel shouldn't reopen it

const events = name => Object.fromEntries(
    ['hello', 'ready', 'state', 'open', 'close', 'shown', 'hidden', 'action']
        .map(ev => [ev, `ritvik-${name}:${ev}`]),
);

const sender = name => (event, payload) =>
    emit(event, payload).catch(err => console.error(`${name}: ${event}`, err));

/**
 * Bar side. `state` is anything JSON; it's sent again whenever `signature`
 * (default: its JSON) changes. `onAction(action)` runs what the panel asks for.
 * `align` says which edge of the button the panel lines up with.
 * Returns { open, toggle(buttonEl), close() }.
 */
export function usePanel(name, { state, signature, onAction, align = 'left' }) {
    const ev = events(name);
    const send = sender(name);
    const [open, setOpen] = useState(false);
    const ready = useRef(false);
    const started = useRef(false);
    const pendingOpen = useRef(null);
    const hiddenAt = useRef(0);
    const latest = useRef({ state, onAction });
    latest.current = { state, onAction };

    const startPanel = () => {
        if (started.current) return;
        started.current = true;
        startWidgetPreset(name, 'default').catch(err => {
            started.current = false;
            console.error(`${name}: could not start the panel widget`, err);
        });
    };

    useEffect(() => {
        const unlisten = [
            listen(ev.ready, ({ payload }) => {
                // An older panel reloads itself when it hears our hello.
                if (payload?.build !== BUILD) return void send(ev.hello, { build: BUILD });
                ready.current = true;
                started.current = true;
                send(ev.state, { state: latest.current.state });
                if (pendingOpen.current) {
                    send(ev.open, { anchor: pendingOpen.current, state: latest.current.state });
                    pendingOpen.current = null;
                }
            }),
            listen(ev.shown, () => setOpen(true)),
            listen(ev.hidden, () => {
                hiddenAt.current = Date.now();
                setOpen(false);
            }),
            listen(ev.action, ({ payload }) => latest.current.onAction(payload)),
        ];
        send(ev.hello, { build: BUILD });
        const timer = setTimeout(() => {
            if (!ready.current) startPanel();
        }, START_AFTER_MS);
        return () => {
            clearTimeout(timer);
            unlisten.forEach(p => p.then(fn => fn()));
        };
    }, []);

    // Keep the panel's copy current; it only redraws while open.
    const sig = signature ?? JSON.stringify(state);
    useEffect(() => {
        if (ready.current) send(ev.state, { state });
    }, [sig]);

    const close = () => send(ev.close);

    const toggle = async buttonEl => {
        if (open) return close();
        if (Date.now() - hiddenAt.current < REOPEN_GUARD_MS) return;
        // Screen position, in physical pixels, of the button's edges and the
        // bar's bottom; the panel hangs from there, inside the bar's monitor.
        const win = currentWidget().tauriWindow;
        const [pos, size, scale] = await Promise.all([win.outerPosition(), win.outerSize(), win.scaleFactor()]);
        const rect = buttonEl.getBoundingClientRect();
        const anchor = {
            align,
            left: Math.round(pos.x + rect.left * scale),
            right: Math.round(pos.x + rect.right * scale),
            top: pos.y + size.height,
            monitorLeft: pos.x,
            monitorRight: pos.x + size.width,
        };
        if (ready.current) {
            send(ev.open, { anchor, state: latest.current.state });
        } else {
            pendingOpen.current = anchor;
            startPanel();
        }
    };

    return { open, toggle, close };
}

const GAP_PX = 6;              // between the bar and the panel
const LEAVE_MS = 700;
const NEVER_ENTERED_MS = 4000;

/**
 * Panel side. Shows, places and hides this window, and keeps the bar's state.
 * The window fits itself to `ref`'s element (call `refit()` after the panel's
 * size changes for a reason other than a new state). It closes when it loses
 * focus, LEAVE_MS after the pointer leaves it (or NEVER_ENTERED_MS after
 * opening if the pointer never comes), on Escape, or on `hide()`.
 * `holdOpen()` returning true (e.g. mid-drag) keeps the pointer leaving from closing it.
 *
 * `onHide()` runs on every close (reset hover state there).
 *
 * Returns { state, open, opens, rootProps, hide, closeIn, refit, act }:
 * `opens` counts openings (key on it to replay entrance animations), `rootProps`
 * go on the panel's root element, `act(action)` sends an action to the bar.
 */
export function usePanelWindow(name, { initialState, holdOpen, onHide } = {}) {
    const ev = events(name);
    const send = sender(name);
    const win = currentWidget().tauriWindow;
    const [state, setState] = useState(initialState);
    const [open, setOpen] = useState(false);
    const [opens, setOpens] = useState(0);
    const [fit, setFit] = useState(0);
    const ref = useRef(null);
    const anchor = useRef(null);
    const shown = useRef(false);
    const timer = useRef(null);
    const latest = useRef({ holdOpen, onHide });
    latest.current = { holdOpen, onHide };

    const closeIn = ms => {
        clearTimeout(timer.current);
        timer.current = setTimeout(hide, ms);
    };

    function hide() {
        clearTimeout(timer.current);
        setOpen(false);
        latest.current.onHide?.();
        if (!shown.current) return;
        shown.current = false;
        win.hide().catch(err => console.error(`${name}: hide failed`, err));
        send(ev.hidden);
    }

    useEffect(() => {
        // Started 1px wide at the corner: get out of sight, then say hello.
        win.hide().catch(() => {});
        const unlisten = [
            listen(ev.hello, ({ payload }) => {
                if (payload?.build !== BUILD) location.reload();
                else send(ev.ready, { build: BUILD });
            }),
            listen(ev.state, ({ payload }) => setState(payload.state)),
            listen(ev.open, ({ payload }) => {
                anchor.current = payload.anchor;
                setState(payload.state);
                setOpen(true);
                setOpens(n => n + 1);
                closeIn(NEVER_ENTERED_MS);
            }),
            listen(ev.close, () => hide()),
            win.onFocusChanged(({ payload: focused }) => {
                if (!focused) hide();
            }),
        ];
        const onKey = e => {
            if (e.key === 'Escape') hide();
        };
        window.addEventListener('keydown', onKey);
        send(ev.ready, { build: BUILD });
        return () => {
            window.removeEventListener('keydown', onKey);
            unlisten.forEach(p => p.then(fn => fn()));
        };
    }, []);

    // Fit the window to the panel, hang it under the button, then show it.
    useLayoutEffect(() => {
        if (!open || !anchor.current || !ref.current) return;
        const { offsetWidth: width, offsetHeight: height } = ref.current;
        const a = anchor.current;
        (async () => {
            const scale = await win.scaleFactor();
            await win.setSize({ type: 'Logical', width, height });
            const w = width * scale;
            const wanted = a.align === 'right' ? a.right - w : a.left;
            const x = Math.max(a.monitorLeft, Math.min(wanted, a.monitorRight - w));
            await win.setPosition({ type: 'Physical', x: Math.round(x), y: Math.round(a.top + GAP_PX * scale) });
            if (!shown.current) {
                shown.current = true;
                await win.show();
                send(ev.shown);
            }
        })().catch(err => console.error(`${name}: could not place the panel`, err));
    }, [open, state, fit]);

    const rootProps = {
        ref,
        onMouseEnter: () => clearTimeout(timer.current),
        onMouseLeave: () => {
            if (open && !latest.current.holdOpen?.()) closeIn(LEAVE_MS);
        },
    };

    return {
        state,
        open,
        opens,
        rootProps,
        hide,
        closeIn,
        refit: () => setFit(n => n + 1),
        act: action => send(ev.action, action),
    };
}
