import React, { useEffect, useRef, useState } from 'react';
import { cx } from '../../lib/format.js';
import { allWindows } from '../../lib/glazewm.js';
import Glyph from '../../ui/Glyph.jsx';
import Island from '../../ui/Island.jsx';
import { trayItems } from './trayItems.js';
import { useDeadIcons } from './useDeadIcons.js';
import { useTrayLayout } from './useTrayLayout.js';
import { useTrayDrag } from './useTrayDrag.js';
import './Systray.css';

/**
 * Windows notification-area icons, folded away behind an arrow.
 *
 * - Click the arrow to open the tray; it folds again CLOSE_MS after the mouse leaves.
 * - `children` (network, Bluetooth, mic, settings) open with it; `alerts` show while
 *   it's folded, for things that need seeing anyway.
 * - Click / right-click / middle-click are forwarded to the owning app.
 * - Drag an icon to reorder it. Drag it onto the chevron to hide it, or out of
 *   the hidden group to show it again. Shift+click also toggles.
 * - The chevron shows/hides the hidden icons.
 *
 *   trayItems.js     provider icons -> items (+ NVIDIA stand-in)
 *   useDeadIcons.js  finds icons left behind by dead apps
 *   useTrayLayout.js saved order + hidden set
 *   useTrayDrag.js   pointer drag-and-drop
 */
const CLOSE_MS = 3000;

export default function Systray({ systray, glazewm, alerts, children }) {
    const windowsKey = allWindows(glazewm).map(e => e.win.id).join();
    const { dead, check } = useDeadIcons(systray, windowsKey);
    const items = trayItems(systray).filter(item => !dead.has(item.id));
    const layout = useTrayLayout(items);
    const { drag, handlers, suppressClick } = useTrayDrag(layout);
    const [expanded, setExpanded] = useState(false);
    const [open, setOpen] = useState(false);
    const closeTimer = useRef(null);

    useEffect(() => () => clearTimeout(closeTimer.current), []);

    if (items.length === 0) return null;

    const close = () => {
        setOpen(false);
        setExpanded(false);
    };

    const renderItem = (item, inHiddenGroup, i) => (
        <button
            key={item.key}
            style={{ '--i': i }}
            data-tray-key={item.key}
            data-tray-hidden={inHiddenGroup ? '1' : '0'}
            className={cx(
                'tray-icon clean-button',
                inHiddenGroup && 'is-hidden',
                drag?.key === item.key && 'dragging',
                drag && drag.key !== item.key && drag.overKey === item.key && (drag.after ? 'drop-after' : 'drop-before'),
            )}
            title={drag ? undefined : item.tooltip}
            onClick={e => {
                if (suppressClick.current) return;
                if (e.shiftKey) layout.setHidden(item.key, !inHiddenGroup);
                else item.left();
            }}
            onContextMenu={e => {
                e.preventDefault();
                item.right();
            }}
            onAuxClick={e => {
                if (e.button === 1) item.middle?.();
            }}
            onMouseEnter={() => {
                item.enter?.()?.catch(() => {});
                check();
            }}
            onMouseLeave={() => item.leave?.()?.catch(() => {})}
            {...handlers(item)}
        >
            <img src={item.iconUrl} alt={item.tooltip} draggable={false}/>
        </button>
    );

    return (
        <Island
            className={cx('tray', drag && 'is-dragging')}
            onMouseEnter={() => clearTimeout(closeTimer.current)}
            onMouseLeave={() => {
                if (open) closeTimer.current = setTimeout(close, CLOSE_MS);
            }}
        >
            {open ? (
                <>
                    {expanded ? layout.hidden.map((item, i) => renderItem(item, true, i)) : null}
                    <button
                        className={cx('tray-toggle clean-button', drag && 'drop-target', drag?.overToggle && 'drop-hover')}
                        title={`${expanded ? 'Collapse' : 'Show'} hidden icons\nDrag an icon here to hide it · Shift+click an icon to hide/show it`}
                        onClick={() => setExpanded(!expanded)}
                    >
                        <i className={`nf ${expanded ? 'nf-md-chevron_right' : 'nf-md-chevron_left'}`}></i>
                        {!expanded && layout.hidden.length > 0 ? <span>{layout.hidden.length}</span> : null}
                    </button>
                    {layout.visible.map((item, i) => renderItem(item, false, i))}
                    <div className="tray-utilities">{children}</div>
                </>
            ) : <div className="tray-utilities">{alerts}</div>}
            <button
                className={cx('tray-arrow clean-button', open && 'open')}
                title={open ? 'Fold the tray away' : 'Open the tray'}
                onClick={() => (open ? close() : setOpen(true))}
            >
                <Glyph name="arrow"/>
            </button>
        </Island>
    );
}
