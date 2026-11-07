import React, { useCallback, useState } from 'react';
import { isAhkRunning } from '../lib/ahk.js';
import { runBrightnessAhk } from '../lib/commands.js';
import { shouldPoll, useInterval } from '../hooks/useInterval.js';
import Glyph from '../ui/Glyph.jsx';
import './Brightness.css';

/**
 * Monitor brightness (DDC/CI), owned by CapsEscSwap.ahk: Alt + volume knob
 * changes it there, and this polls the cached level through brightness.ahk
 * (one short AutoHotkey process, no PowerShell, no monitor I/O per poll).
 * Scroll: ±5% (the step is set in CapsEscSwap.ahk). Hidden when no monitor
 * answers DDC/CI or the AutoHotkey script isn't running.
 * Every poll starts a process, so it polls every 5 s (scrolling here updates
 * at once; the knob's OSD shows the level immediately), not at all while GlazeWM
 * is paused, and never while the script isn't running (lib/ahk.js).
 */
const POLL_MS = 5_000;

export default function Brightness({ glazewm, systray }) {
    const [level, setLevel] = useState(null);
    const running = isAhkRunning(systray);

    const apply = ({ available, level }) => setLevel(available ? level : null);

    useInterval(useCallback(() => (
        runBrightnessAhk('get').then(apply).catch(err => console.error('brightness.ahk failed', err))
    ), []), POLL_MS, running && shouldPoll(glazewm));

    if (level === null || !running) return null;

    const onWheel = e => {
        runBrightnessAhk(e.deltaY < 0 ? 'up' : 'down')
            .then(apply)
            .catch(err => console.error('brightness.ahk failed', err));
    };

    return (
        <div className="brightness" title={`Monitor brightness: ${level}%\nScroll or Alt + volume knob to adjust`} onWheel={onWheel}>
            <Glyph name="lux"/>
            <span className="stat-value">{level}</span>
        </div>
    );
}
