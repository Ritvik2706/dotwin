import React from 'react';
import './BindingModes.css';

/** Active GlazeWM binding modes (e.g. "resize"), as accent-coloured pills. */
export default function BindingModes({ glazewm }) {
    if (!glazewm) return null;

    return glazewm.bindingModes.map(mode => (
        <button className="binding-mode" key={mode.name}>
            {mode.displayName ?? mode.name}
        </button>
    ));
}
