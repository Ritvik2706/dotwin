import { useCallback, useRef, useState } from 'react';
import { shouldPoll, useInterval } from '../hooks/useInterval.js';
import { runScriptJson } from './commands.js';

/**
 * Network and Bluetooth state for the start panel's System row
 * (widgets/StartButton.jsx, src/start/StartPanel.jsx).
 */

/** Spikes to light: all on ethernet, by signal on wifi. */
export function networkBars(network) {
    if (network.defaultInterface?.type !== 'wifi') return network.defaultInterface ? 4 : 0;
    return Math.max(1, Math.ceil((network.defaultGateway?.signalStrength ?? 0) / 25));
}

/** The connection's name: the Wi-Fi network, the adapter, or 'Disconnected'. */
export function networkName(network) {
    const iface = network.defaultInterface;
    return iface ? (network.defaultGateway?.ssid ?? iface.friendlyName ?? iface.name) : 'Disconnected';
}

const BLUETOOTH_POLL_MS = 60_000;
const BLUETOOTH_REFRESH_MS = 3_000;

/**
 * Bluetooth via scripts/bluetooth.ps1 (Zebar has no Bluetooth provider).
 * Each poll spawns PowerShell, so it polls slowly (never while GlazeWM is
 * paused), and `refreshSoon()` checks again when the panel opens.
 * Returns { state, busy, refreshSoon(), toggle() }; state is { available, on,
 * connected: [names] }, or null before the first answer.
 */
export function useBluetooth(glazewm) {
    const [state, setState] = useState(null);
    const [busy, setBusy] = useState(false);
    const lastRefresh = useRef(0);

    const refresh = useCallback(async (action = 'status') => {
        lastRefresh.current = Date.now();
        try {
            setState(await runScriptJson('bluetooth', action));
        } catch (err) {
            console.error('bluetooth.ps1 failed', err);
        }
    }, []);

    useInterval(refresh, BLUETOOTH_POLL_MS, shouldPoll(glazewm));

    return {
        state,
        busy,
        refreshSoon: () => {
            if (Date.now() - lastRefresh.current > BLUETOOTH_REFRESH_MS) refresh();
        },
        toggle: async () => {
            if (busy) return;
            setBusy(true);
            await refresh('toggle');
            setBusy(false);
        },
    };
}

/** One line on a Bluetooth state. */
export function bluetoothSummary(state) {
    const connected = state.connected ?? [];
    return !state.on ? 'Bluetooth off'
        : connected.length > 0 ? `Connected: ${connected.join(', ')}`
        : 'Bluetooth on, no devices connected';
}
