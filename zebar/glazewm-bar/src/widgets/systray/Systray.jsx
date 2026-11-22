import React, { useRef } from 'react';
import { cx } from '../../lib/format.js';
import { allWindows } from '../../lib/glazewm.js';
import Glyph from '../../ui/Glyph.jsx';
import Island from '../../ui/Island.jsx';
import TrayIcon from './TrayIcon.jsx';
import { trayItems } from './trayItems.js';
import { useDeadIcons } from './useDeadIcons.js';
import { useTrayDrag } from './useTrayDrag.js';
import { applyDrop, useTrayLayout } from './useTrayLayout.js';
import { useTrayPanel } from './trayLink.js';
import './Systray.css';

/**
 * Windows notification-area icons.
 *
 *   [pinned icons] [network bluetooth mic settings] [n ➤]
 *
 * - Only pinned icons sit on the bar; the rest are in the tray panel, a
 *   flyout window under the arrow (src/tray/, linked through trayLink.js) that
 *   grows to fit every icon, so nothing is ever cut off. The arrow counts them.
 * - The panel shows pinned icons too, so they stay reachable when the bar's row
 *   runs out of room (it clips; the wheel scrolls it).
 * - Click / double-click / right-click / middle-click are forwarded to the
 *   owning app, on the bar and in the panel.
 * - Shift+click pins or unpins. Drag to reorder; on the bar, drag onto the arrow
 *   to unpin; in the panel, drag between its two sections.
 * - `children` (network, Bluetooth, mic, settings) always stay on the bar.
 *
 *   trayItems.js     provider icons -> items (+ NVIDIA stand-in)
 *   useDeadIcons.js  finds icons left behind by dead apps
 *   useTrayLayout.js saved order + pinned set
 *   useTrayDrag.js   pointer drag-and-drop
 *   trayLink.js      the bar <-> panel messages
 */
const scrollSideways = e => {
    e.currentTarget.scrollLeft += e.deltaY;
};

/** Forward an action to the icon's app; failures (app gone) are only logged. */
function forward(item, type) {
    Promise.resolve()
        .then(() => item?.[type]?.())
        .catch(err => console.debug(`tray: ${type} failed`, err));
}

export default function Systray({ systray, glazewm, children }) {
    const panelOpen = useRef(false);
    const windowsKey = allWindows(glazewm).map(e => e.win.id).join();
    const { dead, check } = useDeadIcons(systray, windowsKey, panelOpen);
    const items = trayItems(systray).filter(item => !dead.has(item.id));
    const layout = useTrayLayout(items);
    const drop = (key, hit) => applyDrop(layout, key, hit);
    const { drag, handlers, suppressClick } = useTrayDrag(drop);
    const arrow = useRef(null);

    const byKey = key => items.find(item => item.key === key);
    const entries = layout.sorted.map(item => ({ item, pinned: layout.pinned.includes(item) }));
    const panel = useTrayPanel(entries, ({ type, key, hit, pinned }) => {
        if (type === 'drop') drop(key, hit);
        else if (type === 'pin') layout.setPinned(key, pinned);
        else forward(byKey(key), type);
    });
    panelOpen.current = panel.open;

    const count = layout.unpinned.length;

    return (
        <Island className={cx('tray', drag && 'is-dragging')} data-tray-zone="pinned">
            {layout.pinned.length > 0 ? (
                <div className="tray-strip" onWheel={scrollSideways}>
                    {layout.pinned.map((item, i) => (
                        <TrayIcon
                            key={item.key}
                            item={item}
                            pinned
                            index={i}
                            dragging={drag?.key === item.key}
                            act={type => {
                                if (type === 'enter') check();
                                forward(item, type);
                            }}
                            togglePin={() => layout.setPinned(item.key, false)}
                            drag={drag}
                            handlers={handlers(item)}
                            suppressClick={suppressClick}
                        />
                    ))}
                </div>
            ) : null}
            <div className="tray-utilities">{children}</div>
            <button
                ref={arrow}
                className={cx(
                    'tray-toggle clean-button',
                    panel.open && 'open',
                    drag && 'drop-target',
                    drag?.zone === 'tray' && 'drop-hover',
                )}
                title={drag ? undefined : [
                    panel.open ? 'Close the tray' : `Open the tray (${count} icon${count === 1 ? '' : 's'})`,
                    'Shift+click an icon to pin it to the bar · drag an icon here to unpin it',
                ].join('\n')}
                onClick={() => {
                    if (!panel.open) check();
                    panel.toggle(arrow.current);
                }}
                onContextMenu={e => e.preventDefault()}
            >
                {count > 0 ? <span>{count}</span> : null}
                <Glyph name="arrow"/>
            </button>
        </Island>
    );
}
