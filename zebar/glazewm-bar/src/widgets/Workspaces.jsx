import React, { useLayoutEffect, useRef, useState } from 'react';
import { runGlaze } from '../lib/commands.js';
import { cx } from '../lib/format.js';
import { workspacesToShow } from '../lib/glazewm.js';
import './Workspaces.css';

/**
 * GlazeWM workspace buttons for the focused monitor. Click to switch, scroll
 * to walk through them (niri's Mod+Shift+wheel).
 * Only workspaces with windows show, plus the one on screen. Numbers show as Roman numerals, so
 * workspace 10 reads X. A silver mark under the focused one slides to the next:
 * it's measured, since buttons come and go.
 */
const NUMERALS = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'];

const numeral = workspace => NUMERALS[parseInt(workspace.name)] ?? workspace.name;

export default function Workspaces({ glazewm }) {
    const row = useRef(null);
    const [mark, setMark] = useState(null);

    const workspaces = glazewm ? workspacesToShow(glazewm) : [];
    const focused = workspaces.find(workspace => workspace.hasFocus)?.name;
    const layoutKey = workspaces.map(workspace => workspace.name).join();

    useLayoutEffect(() => {
        const button = row.current?.querySelector('.workspace.focused');
        setMark(button ? { x: button.offsetLeft, width: button.offsetWidth } : null);
    }, [focused, layoutKey]);

    if (!glazewm) return null;

    return (
        <div
            ref={row}
            className="workspaces"
            onWheel={e => runGlaze(glazewm, `focus --${e.deltaY < 0 ? 'prev' : 'next'}-workspace`)}
        >
            {mark ? (
                <span className="workspace-mark" style={{ width: mark.width, transform: `translateX(${mark.x}px)` }}></span>
            ) : null}
            {workspaces.map(workspace => (
                <button
                    key={workspace.name}
                    className={cx('workspace', workspace.hasFocus && 'focused')}
                    onClick={() => runGlaze(glazewm, `focus --workspace ${workspace.name}`)}
                >
                    {numeral(workspace)}
                </button>
            ))}
        </div>
    );
}
