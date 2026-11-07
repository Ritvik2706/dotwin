import React, { useState } from 'react';
import { openUri, runScript } from '../lib/commands.js';
import { cx, truncate } from '../lib/format.js';
import Glyph from '../ui/Glyph.jsx';
import { BackItem, InlineMenu, MenuItem } from '../ui/InlineMenu.jsx';
import './Volume.css';

/**
 * Default playback device volume.
 * Scroll: ±STEP%. Click: mute toggle. Right-click: output device picker.
 *
 * The picker is a row overlaid on the status island (absolute, so nothing
 * around it shifts): one button per playback device, the volume mixer, and
 * back. Zebar's audio provider can't change the default device, so picking one
 * runs scripts/audiodevice.ps1.
 */
const STEP = 2;
const MAX_NAME = 22;

export default function Volume({ audio }) {
    const [picking, setPicking] = useState(false);
    const device = audio?.defaultPlaybackDevice;
    if (!device) return null;

    const onWheel = e => {
        const step = e.deltaY < 0 ? STEP : -STEP;
        audio.setVolume(Math.max(0, Math.min(100, Math.round(device.volume) + step)));
    };

    return (
        <>
            <button
                className={cx('volume clean-button', device.isMuted && 'muted')}
                title={`${device.name}: ${Math.round(device.volume)}%\nRight-click: switch output`}
                onClick={() => audio.setMute(!device.isMuted)}
                onContextMenu={e => {
                    e.preventDefault();
                    setPicking(true);
                }}
                onWheel={onWheel}
            >
                <Glyph name={device.isMuted || device.volume === 0 ? 'bellMuted' : 'bell'}/>
                <span className="stat-value">{Math.round(device.volume)}</span>
            </button>
            {picking ? <DevicePicker audio={audio} onClose={() => setPicking(false)}/> : null}
        </>
    );
}

function DevicePicker({ audio, onClose }) {
    const [busyId, setBusyId] = useState(null);

    const pick = async device => {
        if (device.isDefaultPlayback) return onClose();
        setBusyId(device.deviceId);
        try {
            await runScript('audiodevice', 'set', device.deviceId);
        } catch (err) {
            console.error('audiodevice.ps1 failed', err);
        }
        setBusyId(null);
        onClose();
    };

    return (
        <InlineMenu className="audio-picker">
            {audio.playbackDevices.map(device => (
                <MenuItem
                    key={device.deviceId}
                    className={cx(device.isDefaultPlayback && 'current', busyId === device.deviceId && 'busy')}
                    icon={device.isDefaultPlayback ? 'nf-md-check' : 'nf-md-speaker'}
                    label={truncate(device.name, MAX_NAME)}
                    title={device.name}
                    onClick={() => pick(device)}
                />
            ))}
            <MenuItem
                icon="nf-md-tune_vertical"
                title="Volume mixer"
                onClick={() => {
                    onClose();
                    openUri('ms-settings:apps-volume');
                }}
            />
            <BackItem onClick={onClose}/>
        </InlineMenu>
    );
}
