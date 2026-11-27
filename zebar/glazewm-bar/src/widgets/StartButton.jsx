import React, { useEffect, useRef, useState } from 'react';
import { isAhkRunning } from '../lib/ahk.js';
import { openTaskManager, openUri, runTaskbarAhk } from '../lib/commands.js';
import { cx } from '../lib/format.js';
import { usePanel } from '../lib/panelLink.js';
import { bluetoothSummary, networkBars, networkName } from '../lib/system.js';
import Glyph from '../ui/Glyph.jsx';
import { RUN_POWER } from './startActions.js';
import './StartButton.css';

/**
 * The sigil + host name, at the far left.
 * Click: the start panel (src/start/), a drop-down window like the tray's, with
 * power actions; network, Bluetooth, mic and quick settings; and the Start
 * menu, taskbar toggle, Settings and Task Manager. Right-click: the Windows Start menu straight away.
 *
 * The panel only draws; everything runs here. CapsEscSwap.ahk keeps the Windows
 * taskbar hidden, and the Start menu and taskbar toggle go through taskbar.ahk,
 * so they're left out while the script isn't running (lib/ahk.js).
 */
async function taskbarCommand(action) {
    const { stdout } = await runTaskbarAhk(action);
    return JSON.parse(stdout);
}

const logTaskbar = err => console.error('taskbar.ahk failed', err);

/** What the panel's System row shows; null where there's nothing to show. */
function systemState(network, audio, bluetooth) {
    const mic = audio?.defaultRecordingDevice;
    const bt = bluetooth.state;
    return {
        network: network ? {
            online: !!network.defaultInterface,
            wifi: network.defaultInterface?.type === 'wifi',
            bars: networkBars(network),
            name: networkName(network),
        } : null,
        bluetooth: bt?.available ? {
            on: bt.on,
            connected: (bt.connected ?? []).length > 0,
            summary: bluetoothSummary(bt),
            busy: bluetooth.busy,
        } : null,
        mic: mic ? { muted: mic.isMuted, name: mic.name } : null,
    };
}

export default function StartButton({ systray, host, network, audio, bluetooth }) {
    const button = useRef(null);
    const ahk = isAhkRunning(systray);
    const [taskbar, setTaskbar] = useState(null);

    // "RITVIK-WinDesktop" -> "Ritvik"
    const first = host?.hostname?.split('-')[0] ?? '';
    const name = first.charAt(0) + first.slice(1).toLowerCase();
    const bootMinute = host?.uptime != null ? Math.round((Date.now() - host.uptime) / 60000) : null;

    const refreshTaskbar = () => {
        if (ahk) taskbarCommand('get').then(setTaskbar).catch(logTaskbar);
    };
    useEffect(() => {
        if (!ahk) setTaskbar(null);
    }, [ahk]);

    const mic = audio?.defaultRecordingDevice;
    const run = {
        'start-menu': () => ahk && taskbarCommand('start').catch(logTaskbar),
        taskbar: () => ahk && taskbarCommand('toggle').then(setTaskbar).catch(logTaskbar),
        settings: () => openUri('ms-settings:'),
        taskmgr: () => openTaskManager(),
        network: () => openUri('ms-availablenetworks:'),
        'network:alt': () => openUri('ms-settings:network'),
        bluetooth: () => openUri('ms-settings:bluetooth'),
        'bluetooth:alt': () => bluetooth.toggle(),
        mic: () => mic && audio.setMute(!mic.isMuted, { deviceId: mic.deviceId }),
        'mic:alt': () => openUri('ms-settings:sound'),
        quick: () => openUri('ms-actioncenter:controlcenter/&showFooter=true'),
    };

    const panel = usePanel('start', {
        state: {
            name,
            bootMinute,
            ahk,
            taskbar: ahk ? taskbar : null,
            system: systemState(network, audio, bluetooth),
        },
        onAction: ({ type, alt }) => {
            if (RUN_POWER[type]) {
                RUN_POWER[type]().catch(err => console.error(`power action '${type}' failed`, err));
                return;
            }
            Promise.resolve()
                .then(() => run[alt ? `${type}:alt` : type]?.())
                .catch(err => console.error(`start: '${type}' failed`, err));
        },
    });

    return (
        <div className="start">
            <button
                ref={button}
                className={cx('start-button clean-button', panel.open && 'open')}
                title={panel.open ? undefined : 'Power, system and Windows\nRight-click: Start menu'}
                onClick={() => {
                    if (!panel.open) {
                        refreshTaskbar();
                        bluetooth.refreshSoon();
                    }
                    panel.toggle(button.current);
                }}
                onContextMenu={e => {
                    e.preventDefault();
                    panel.close();
                    if (ahk) taskbarCommand('start').catch(logTaskbar);
                }}
            >
                <Glyph name="sigil"/>
            </button>
            {name}
        </div>
    );
}
