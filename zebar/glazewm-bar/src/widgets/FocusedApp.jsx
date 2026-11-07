import React from 'react';
import { appName, focusedWindow } from '../lib/glazewm.js';
import './FocusedApp.css';

/**
 * Name of the focused window's app, after the open-apps initials. Window title on
 * hover. Nothing is shown when focus is on an empty workspace.
 */
export default function FocusedApp({ glazewm }) {
    const win = focusedWindow(glazewm);
    if (!win) return null;

    return <div className="focused-app" title={win.title || win.processName}>{appName(win)}</div>;
}
