import React from 'react';
import { useAppIcon } from '../lib/appIcons.js';

/** A window's real app icon (see lib/appIcons.js), or a generic glyph while missing. */
export default function AppIcon({ win }) {
    const [icon, markBroken] = useAppIcon(win);
    if (!icon) return <i className="nf nf-md-application"></i>;
    return <img src={icon} alt={win.processName} draggable={false} onError={markBroken}/>;
}
