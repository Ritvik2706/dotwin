import React, { useEffect, useLayoutEffect, useRef, useState } from 'react';
import { emit, listen } from '@tauri-apps/api/event';
import { currentWidget } from 'zebar';
import { cx } from '../lib/format.js';
import TrayIcon from '../widgets/systray/TrayIcon.jsx';
import { useTrayDrag } from '../widgets/systray/useTrayDrag.js';
import { BUILD, EV } from '../widgets/systray/trayLink.js';
import '../widgets/systray/Systray.css';
import './TrayPanel.css';

/**
 * The tray panel: every tray icon in a grid, dropped down under the bar's arrow.
 * Its own Zebar widget window ("tray" in zpack.json), started hidden by the bar
 * and then only shown and hidden (widgets/systray/trayLink.js has the messages).
 * It holds no data of its own: the bar sends the icons and runs every action.
 *
 *   ┌ Tray ─────────────── 9 ┐
 *   │ ▣ ▣ ▣ ▣ ▣ ▣            │   in the tray
 *   │ ▣ ▣ ▣                  │
 *   │ On the bar             │   pinned (also on the bar)
 *   │ ▣ ▣                    │
 *   │ hovered icon's tooltip │
 *   └────────────────────────┘
 *
 * The window sizes itself to the grid, so every icon always shows. It closes
 * when it loses focus, LEAVE_MS after the pointer leaves it (or NEVER_ENTERED_MS
 * after opening if the pointer never comes), on Escape, and after a click on an
 * icon has gone to its app.
 */
const GAP_PX = 6;              // between the bar and the panel
const LEAVE_MS = 700;
const NEVER_ENTERED_MS = 4000;
const AFTER_CLICK_MS = 450;    // long enough for a double-click to reach the app
const MIN_COLS = 5;
const MAX_COLS = 8;

const win = currentWidget().tauriWindow;
const send = (event, payload) => emit(event, payload).catch(err => console.error(`tray: ${event}`, err));
const act = (type, key, extra) => send(EV.action, { type, key, ...extra });

export default function TrayPanel() {
    const [items, setItems] = useState([]);
    const [open, setOpen] = useState(false);
    const [opens, setOpens] = useState(0);     // keys the grids, so icons animate in on each open
    const [hovered, setHovered] = useState(null);
    const panel = useRef(null);
    const anchor = useRef(null);
    const shown = useRef(false);
    const timer = useRef(null);
    const { drag, handlers, suppressClick } = useTrayDrag((key, hit) => act('drop', key, { hit }));

    const closeIn = ms => {
        clearTimeout(timer.current);
        timer.current = setTimeout(hide, ms);
    };

    function hide() {
        clearTimeout(timer.current);
        setOpen(false);
        setHovered(null);
        if (!shown.current) return;
        shown.current = false;
        win.hide().catch(err => console.error('tray: hide failed', err));
        send(EV.hidden);
    }

    useEffect(() => {
        // Started 1px wide at the corner: get out of sight, then say hello.
        win.hide().catch(() => {});
        const unlisten = [
            listen(EV.hello, ({ payload }) => {
                if (payload?.build !== BUILD) location.reload();
                else send(EV.ready, { build: BUILD });
            }),
            listen(EV.state, ({ payload }) => setItems(payload.items)),
            listen(EV.open, ({ payload }) => {
                anchor.current = payload.anchor;
                setItems(payload.items);
                setOpen(true);
                setOpens(n => n + 1);
                closeIn(NEVER_ENTERED_MS);
            }),
            listen(EV.close, () => hide()),
            win.onFocusChanged(({ payload: focused }) => {
                if (!focused) hide();
            }),
        ];
        const onKey = e => {
            if (e.key === 'Escape') hide();
        };
        window.addEventListener('keydown', onKey);
        send(EV.ready, { build: BUILD });
        return () => {
            window.removeEventListener('keydown', onKey);
            unlisten.forEach(p => p.then(fn => fn()));
        };
    }, []);

    // Fit the window to the panel, hang it under the arrow, then show it.
    useLayoutEffect(() => {
        if (!open || !anchor.current || !panel.current) return;
        const { offsetWidth: width, offsetHeight: height } = panel.current;
        const a = anchor.current;
        (async () => {
            const scale = await win.scaleFactor();
            await win.setSize({ type: 'Logical', width, height });
            const w = width * scale;
            const x = Math.max(a.monitorLeft, Math.min(a.right - w, a.monitorRight - w));
            await win.setPosition({ type: 'Physical', x: Math.round(x), y: Math.round(a.top + GAP_PX * scale) });
            if (!shown.current) {
                shown.current = true;
                await win.show();
                send(EV.shown);
            }
        })().catch(err => console.error('tray: could not place the panel', err));
    }, [open, items]);

    const unpinned = items.filter(item => !item.pinned);
    const pinned = items.filter(item => item.pinned);
    const cols = Math.min(MAX_COLS, Math.max(MIN_COLS, unpinned.length, pinned.length));

    const renderIcon = (item, i) => (
        <TrayIcon
            key={item.key}
            item={item}
            pinned={item.pinned}
            index={i}
            dragging={drag?.key === item.key}
            act={type => {
                act(type, item.key);
                if (type === 'right') hide();
                else if (type === 'left' || type === 'double') closeIn(AFTER_CLICK_MS);
            }}
            togglePin={() => act('pin', item.key, { pinned: !item.pinned })}
            onHover={setHovered}
            drag={drag}
            handlers={handlers(item)}
            suppressClick={suppressClick}
        />
    );

    const zone = (name, list, empty) => (
        <div
            key={`${name}-${opens}`}
            className={cx('tray-grid', drag && drag.zone === name && 'drop-hover')}
            data-tray-zone={name}
        >
            {list.length ? list.map(renderIcon) : <span className="tray-empty">{empty}</span>}
        </div>
    );

    // Look it up again: the tooltip may have changed (a counter) since the hover began.
    const hoveredItem = hovered && items.find(item => item.key === hovered.key);
    const [name, ...detail] = (hoveredItem?.tooltip ?? '').split('\n').map(s => s.trim()).filter(Boolean);

    return (
        <div
            ref={panel}
            className={cx('tray-panel', open && 'open', drag && 'is-dragging')}
            style={{ '--cols': cols }}
            onMouseEnter={() => clearTimeout(timer.current)}
            onMouseLeave={() => {
                if (open && !drag) closeIn(LEAVE_MS);
            }}
        >
            <header>
                <span className="tray-panel-title">Tray</span>
                <span className="tray-panel-count">{items.length}</span>
            </header>
            {zone('tray', unpinned, 'everything is on the bar')}
            <div className="tray-panel-label">on the bar</div>
            {zone('pinned', pinned, 'shift+click or drag an icon here')}
            <footer>
                {hoveredItem ? (
                    <>
                        <span className="tray-tip-name">{name ?? 'untitled'}</span>
                        {detail.length ? <span className="tray-tip-detail"> · {detail.join(' · ')}</span> : null}
                    </>
                ) : (
                    <span className="tray-tip-detail">shift+click pins · drag sorts</span>
                )}
            </footer>
        </div>
    );
}
