import React from 'react';
import { cx } from '../../lib/format.js';

/**
 * One tray icon button, used on the bar and in the panel. `act(type)` forwards
 * 'left' | 'right' | 'double' | 'middle' | 'enter' | 'leave' to the owning app;
 * Shift+click calls `togglePin()` instead.
 */
export default function TrayIcon({ item, pinned, index, dragging, act, togglePin, onHover, drag, handlers, suppressClick }) {
    const dropMark = drag && drag.key !== item.key && drag.overKey === item.key
        && (drag.after ? 'drop-after' : 'drop-before');

    return (
        <button
            style={{ '--i': index }}
            data-tray-key={item.key}
            data-tray-pinned={pinned ? '1' : '0'}
            className={cx('tray-icon clean-button', dragging && 'dragging', dropMark)}
            title={drag || onHover ? undefined : item.tooltip}
            onClick={e => {
                if (suppressClick.current) return;
                if (e.shiftKey) togglePin();
                else act('left');
            }}
            onDoubleClick={e => {
                if (!e.shiftKey) act('double');
            }}
            onContextMenu={e => {
                e.preventDefault();
                act('right');
            }}
            onAuxClick={e => {
                if (e.button === 1) act('middle');
            }}
            onMouseEnter={() => {
                act('enter');
                onHover?.(item);
            }}
            onMouseLeave={() => {
                act('leave');
                onHover?.(null);
            }}
            {...handlers}
        >
            <img src={item.iconUrl} alt="" draggable={false}/>
        </button>
    );
}
