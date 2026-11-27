import React, { useRef, useState } from 'react';
import { cx } from '../lib/format.js';
import { usePanelWindow } from '../lib/panelLink.js';
import TrayIcon from '../widgets/systray/TrayIcon.jsx';
import { useTrayDrag } from '../widgets/systray/useTrayDrag.js';
import '../widgets/systray/Systray.css';
import './TrayPanel.css';

/**
 * The tray panel: every tray icon in a grid, dropped down under the bar's arrow.
 * Its own Zebar widget window ("tray" in zpack.json), started hidden by the bar
 * and then only shown and hidden (lib/panelLink.js; widgets/systray/trayLink.js
 * lists the messages). It holds no data of its own: the bar sends the icons and
 * runs every action.
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
 * like every panel (lib/panelLink.js), and also after a click on an icon has
 * gone to its app.
 */
const AFTER_CLICK_MS = 450;    // long enough for a double-click to reach the app
const MIN_COLS = 5;
const MAX_COLS = 8;

export default function TrayPanel() {
    const [hovered, setHovered] = useState(null);
    const dragRef = useRef(null);
    const panel = usePanelWindow('tray', {
        initialState: { items: [] },
        holdOpen: () => dragRef.current != null,   // don't close mid-drag
        onHide: () => setHovered(null),
    });
    const { opens, hide, closeIn, act: send } = panel;
    const act = (type, key, extra) => send({ type, key, ...extra });
    const { drag, handlers, suppressClick } = useTrayDrag((key, hit) => act('drop', key, { hit }));
    dragRef.current = drag;
    const items = panel.state?.items ?? [];

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
            {...panel.rootProps}
            className={cx('tray-panel', panel.open && 'open', drag && 'is-dragging')}
            style={{ '--cols': cols }}
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
