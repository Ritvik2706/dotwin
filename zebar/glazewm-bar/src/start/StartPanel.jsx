import React, { useState } from 'react';
import { useConfirm } from '../hooks/useConfirm.js';
import { cx } from '../lib/format.js';
import { usePanelWindow } from '../lib/panelLink.js';
import Glyph from '../ui/Glyph.jsx';
import { POWER_ACTIONS } from '../widgets/startActions.js';
import './StartPanel.css';

/**
 * The start panel: power, system and Windows actions, dropped down under the sigil.
 * Its own Zebar widget window ("start" in zpack.json), started hidden by the bar
 * and then only shown and hidden, like the tray panel (lib/panelLink.js). It
 * runs nothing itself: every tile sends an action, and StartButton.jsx runs it.
 *
 *   ┌ Ritvik ─────────── up 3h 12m ┐
 *   │ lock sleep out restart power │   the last three need a second click
 *   │ System                       │
 *   │ net  bluetooth  mic  quick   │   right-click: settings / radio
 *   │ Windows                      │
 *   │ start taskbar settings tasks │   the first two only while CapsEscSwap runs
 *   │ hovered tile's hint          │
 *   └──────────────────────────────┘
 *
 * State from the bar: { name, bootMinute, ahk, taskbar: { available, hidden } | null,
 * system: { network, bluetooth, mic } } (StartButton.jsx). A tile closes the
 * panel once it has run, except toggles (`stay` for a click, `altStay` for a
 * right-click), which stay to show their new state.
 */
function uptime(bootMinute) {
    if (bootMinute == null) return '';
    const mins = Math.max(0, Math.round(Date.now() / 60000) - bootMinute);
    const d = Math.floor(mins / 1440);
    const h = Math.floor(mins / 60) % 24;
    const m = mins % 60;
    return `up ${d ? `${d}d ` : ''}${d || h ? `${h}h ` : ''}${m}m`;
}

/** The System row, from the bar's snapshot. */
function systemActions({ network, bluetooth, mic } = {}) {
    return [
        network && {
            id: 'network', glyph: 'network', bars: network.bars,
            label: !network.online ? 'Offline' : network.wifi ? 'Wi-Fi' : 'Wired',
            dim: !network.online,
            hint: network.name, alt: 'network settings',
        },
        bluetooth && {
            id: 'bluetooth', glyph: 'bluetooth', altStay: true,
            label: bluetooth.on ? 'Bluetooth' : 'BT off',
            dim: !bluetooth.on, lit: bluetooth.connected, busy: bluetooth.busy,
            hint: bluetooth.summary, alt: `turn ${bluetooth.on ? 'off' : 'on'}`,
        },
        mic && {
            id: 'mic', glyph: mic.muted ? 'micMuted' : 'mic', stay: true,
            label: mic.muted ? 'Muted' : 'Mic',
            dim: mic.muted,
            hint: `${mic.name} · click to ${mic.muted ? 'unmute' : 'mute'}`, alt: 'sound settings',
        },
        { id: 'quick', glyph: 'settings', label: 'Quick', hint: 'Quick settings' },
    ].filter(Boolean);
}

function windowsActions(ahk, taskbar) {
    const withTaskbar = ahk && taskbar?.available;
    return [
        withTaskbar && { id: 'start-menu', glyph: 'start', label: 'Start', hint: 'Windows Start menu' },
        withTaskbar && {
            id: 'taskbar', glyph: 'taskbar', stay: true,
            label: taskbar.hidden ? 'Taskbar' : 'Hide bar',
            hint: `${taskbar.hidden ? 'Bring the Windows taskbar back' : 'Hide the Windows taskbar'} · Win+F4`,
        },
        { id: 'settings', glyph: 'cog', label: 'Settings', hint: 'Windows Settings' },
        { id: 'taskmgr', glyph: 'pulse', label: 'Tasks', hint: 'Task Manager' },
    ].filter(Boolean);
}

function Tile({ action, index, armed, onRun, onAlt, onHover }) {
    return (
        <button
            className={cx(
                'start-tile clean-button',
                action.confirm && 'destructive',
                armed && 'confirming',
                action.dim && 'dim',
                action.lit && 'lit',
                action.busy && 'busy',
            )}
            style={{ '--i': index }}
            onClick={onRun}
            onContextMenu={e => {
                e.preventDefault();
                if (action.alt) onAlt();
            }}
            onMouseEnter={() => onHover(action.id)}
            onMouseLeave={() => onHover(null)}
        >
            <Glyph name={action.glyph} bars={action.bars}/>
            <span>{armed ? `${action.label}?` : action.label}</span>
        </button>
    );
}

export default function StartPanel() {
    const [hovered, setHovered] = useState(null);
    const [armed, confirm, disarm] = useConfirm();
    const panel = usePanelWindow('start', {
        initialState: {},
        onHide: () => {
            setHovered(null);
            disarm();
        },
    });
    const { name, bootMinute, ahk, taskbar, system } = panel.state ?? {};

    const run = (action, alt = false) => {
        if (!alt && action.confirm && !confirm(action.id)) return;
        disarm();
        panel.act({ type: action.id, alt });
        if (!(alt ? action.altStay : action.stay)) panel.hide();
    };

    const sections = [
        { key: 'power', actions: POWER_ACTIONS },
        { key: 'system', label: 'System', actions: systemActions(system) },
        { key: 'windows', label: 'Windows', actions: windowsActions(ahk, taskbar) },
    ];
    const all = sections.flatMap(s => s.actions);

    // Look it up again: the state (a mic toggle) may have changed since the hover began.
    const hoveredAction = hovered && all.find(action => action.id === hovered);
    const armedAction = armed && all.find(action => action.id === armed);
    const footer = armedAction ? (
        <span className="start-tip-warn">click again to {armedAction.label.toLowerCase()}</span>
    ) : hoveredAction ? (
        <>
            <span className="start-tip-name">{hoveredAction.hint ?? hoveredAction.label}</span>
            {hoveredAction.confirm ? <span className="start-tip-detail"> · click twice</span> : null}
            {hoveredAction.alt ? <span className="start-tip-detail"> · right-click: {hoveredAction.alt}</span> : null}
        </>
    ) : ahk === false ? (
        <span className="start-tip-detail">CapsEscSwap.ahk not running</span>
    ) : (
        <span className="start-tip-detail">right-click the sigil for Start</span>
    );

    let index = 0;
    return (
        <div {...panel.rootProps} className={cx('start-panel', panel.open && 'open')}>
            <header>
                <span className="start-panel-title">{name || 'Start'}</span>
                <span className="start-panel-uptime">{uptime(bootMinute)}</span>
            </header>
            {sections.map(section => (
                <React.Fragment key={section.key}>
                    {section.label ? <div className="start-panel-label">{section.label}</div> : null}
                    <div key={`${section.key}-${panel.opens}`} className="start-grid">
                        {section.actions.map(action => (
                            <Tile
                                key={action.id}
                                action={action}
                                index={index++}
                                armed={armed === action.id}
                                onRun={() => run(action)}
                                onAlt={() => run(action, true)}
                                onHover={setHovered}
                            />
                        ))}
                    </div>
                </React.Fragment>
            ))}
            <footer>{footer}</footer>
        </div>
    );
}
