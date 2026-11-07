import React from 'react';
import { openUri } from '../lib/commands.js';
import Glyph from '../ui/Glyph.jsx';
import './QuickSettings.css';

/** Opens the Windows quick-settings panel (Wi-Fi, Bluetooth, brightness, focus...). */
export default function QuickSettings() {
    return (
        <button
            className="quick-settings clean-button"
            title="Quick settings"
            onClick={() => openUri('ms-actioncenter:controlcenter/&showFooter=true')}
        >
            <Glyph name="settings"/>
        </button>
    );
}
