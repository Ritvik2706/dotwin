import React, { useCallback, useState } from 'react';
import { openUri, runScriptJson } from '../lib/commands.js';
import { cx } from '../lib/format.js';
import { shouldPoll, useInterval } from '../hooks/useInterval.js';
import Glyph from '../ui/Glyph.jsx';
import './Bluetooth.css';

/**
 * Bluetooth status via scripts/bluetooth.ps1 (Zebar has no Bluetooth provider).
 * Connected devices brighten the glyph and are named in its tooltip.
 * Click: Bluetooth & devices settings (connect/pair). Right-click: radio on/off.
 * Each poll spawns PowerShell, so it polls slowly (never while GlazeWM is paused) and
 * refreshes on hover instead.
 */
const POLL_MS = 60_000;
const HOVER_REFRESH_MS = 3_000;

export default function Bluetooth({ glazewm }) {
    // { available, on, connected: [names] } from bluetooth.ps1
    const [state, setState] = useState(null);
    const [busy, setBusy] = useState(false);
    const [lastRefresh, setLastRefresh] = useState(0);

    const refresh = useCallback(async (action = 'status') => {
        setLastRefresh(Date.now());
        try {
            setState(await runScriptJson('bluetooth', action));
        } catch (err) {
            console.error('bluetooth.ps1 failed', err);
        }
    }, []);

    useInterval(refresh, POLL_MS, shouldPoll(glazewm));

    if (!state?.available) return null;

    const connected = state.connected ?? [];
    const title = !state.on ? 'Bluetooth off — right-click to turn on'
        : connected.length > 0 ? `Connected: ${connected.join(', ')}`
        : 'Bluetooth on — no devices connected';

    return (
        <button
            className={cx('bluetooth clean-button', !state.on && 'off', connected.length > 0 && 'connected', busy && 'busy')}
            title={title}
            onClick={() => openUri('ms-settings:bluetooth')}
            onMouseEnter={() => {
                if (Date.now() - lastRefresh > HOVER_REFRESH_MS) refresh();
            }}
            onContextMenu={async e => {
                e.preventDefault();
                if (busy) return;
                setBusy(true);
                await refresh('toggle');
                setBusy(false);
            }}
        >
            <Glyph name="bluetooth"/>
        </button>
    );
}
