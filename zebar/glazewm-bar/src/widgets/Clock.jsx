import React from 'react';
import { openUri } from '../lib/commands.js';
import './Clock.css';

/**
 * Time (HH:mm) between two wings, after the wallpaper's. Click opens notifications
 * & calendar. A glint runs along the wings when the minute changes: the glint is
 * keyed on the minute, which restarts its animation.
 */
function formatTime(now) {
    return new Date(now ?? Date.now()).toLocaleTimeString('en-GB', { hour: '2-digit', minute: '2-digit' });
}

/** "Fri 6 Nov", at the far right to balance the name at the far left. */
function formatDate(now) {
    const date = new Date(now ?? Date.now());
    const part = options => date.toLocaleDateString('en-GB', options);
    return `${part({ weekday: 'short' })} ${part({ day: 'numeric' })} ${part({ month: 'short' })}`;
}

function Wing({ side, minute }) {
    return (
        <span className={`wing wing-${side}`}>
            <span key={minute} className="wing-glint"></span>
        </span>
    );
}

export default function Clock({ date }) {
    const time = formatTime(date?.now);

    return (
        <>
            <Wing side="left" minute={time}/>
            <button className="clock clean-button" title="Notifications & calendar" onClick={() => openUri('ms-actioncenter:')}>
                {time}
            </button>
            <Wing side="right" minute={time}/>
        </>
    );
}

export function DateMark({ date }) {
    return (
        <button className="date-mark clean-button" title="Notifications & calendar" onClick={() => openUri('ms-actioncenter:')}>
            {formatDate(date?.now)}
        </button>
    );
}
