import React from 'react';
import { openUri } from '../lib/commands.js';
import { cx } from '../lib/format.js';
import Glyph from '../ui/Glyph.jsx';
import './Mic.css';

/**
 * Default recording device. Click: mute/unmute it system-wide (every app,
 * OBS included, gets silence while muted). Right-click: Windows sound settings.
 * With alertOnly it only shows while muted: it's left out while the tray is folded.
 */
export default function Mic({ audio, alertOnly }) {
    const device = audio?.defaultRecordingDevice;
    if (!device) return null;

    const muted = device.isMuted;
    if (alertOnly && !muted) return null;

    return (
        <button
            className={cx('mic clean-button', muted ? 'muted' : 'live')}
            title={`${device.name} — ${muted ? 'muted, click to unmute' : 'live, click to mute'}`}
            onClick={() => audio.setMute(!muted, { deviceId: device.deviceId })}
            onContextMenu={e => {
                e.preventDefault();
                openUri('ms-settings:sound');
            }}
        >
            <Glyph name={muted ? 'micMuted' : 'mic'}/>
        </button>
    );
}
