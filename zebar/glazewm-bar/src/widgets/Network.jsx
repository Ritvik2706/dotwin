import React from 'react';
import { openUri } from '../lib/commands.js';
import { cx } from '../lib/format.js';
import Glyph from '../ui/Glyph.jsx';
import './Network.css';

/**
 * Connection status; first of the system controls, so it carries the divider.
 * Click: Windows network flyout. Right-click: network settings.
 * With alertOnly it only shows when offline: it's left out while the tray is folded.
 */
/** Spikes to light: all on ethernet, by signal on wifi. */
function networkBars(network) {
    if (network.defaultInterface?.type !== 'wifi') return network.defaultInterface ? 4 : 0;
    return Math.max(1, Math.ceil((network.defaultGateway?.signalStrength ?? 0) / 25));
}

export default function Network({ network, alertOnly }) {
    if (!network) return null;
    if (alertOnly && network.defaultInterface) return null;

    const iface = network.defaultInterface;
    const title = iface
        ? (network.defaultGateway?.ssid ?? iface.friendlyName ?? iface.name)
        : 'Disconnected';

    return (
        <button
            className={cx('network clean-button', !iface && 'offline')}
            title={title}
            onClick={() => openUri('ms-availablenetworks:')}
            onContextMenu={e => {
                e.preventDefault();
                openUri('ms-settings:network');
            }}
        >
            <Glyph name="network" bars={networkBars(network)}/>
        </button>
    );
}
