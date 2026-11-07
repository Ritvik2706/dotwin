import { useEffect, useState } from 'react';
import { runScript } from './commands.js';

/**
 * Real app icons for windows (focused-app indicator, open-apps island).
 *
 * GlazeWM only reports a window's handle and process name, so
 * scripts/appicon.ps1 looks the icon up the way the Windows taskbar does
 * (window icon, UWP app logo, shortcut icon, exe icon). It caches icons on disk
 * itself; here they are only cached in memory.
 */

const memory = new Map();   // key -> data URL, or '' when unavailable
const inFlight = new Map(); // key -> Promise<data URL | ''>

/**
 * Cache key for a window's app. UWP apps all run as ApplicationFrameHost, so
 * they are told apart by title. Limited to what appicon.ps1's privilege accepts.
 */
function iconKey(win) {
    const name = /^ApplicationFrameHost$/i.test(win.processName)
        ? `uwp.${win.title}`
        : win.processName;
    return name.replace(/[^\w.-]+/g, '_').slice(0, 100);
}

async function fetchIcon(win, key) {
    try {
        const { stdout } = await runScript('appicon', win.handle, key);
        const base64 = stdout.trim();
        return base64 ? `data:image/png;base64,${base64}` : '';
    } catch (err) {
        console.error(`appicon.ps1 failed for ${key}`, err);
        return '';
    }
}

function iconFor(win) {
    const key = iconKey(win);
    if (memory.has(key)) return Promise.resolve(memory.get(key));
    if (!inFlight.has(key)) {
        inFlight.set(key, fetchIcon(win, key).then(url => {
            // A failed lookup isn't remembered: the next window of this app retries.
            if (url) memory.set(key, url);
            inFlight.delete(key);
            return url;
        }));
    }
    return inFlight.get(key);
}

/**
 * Icon for `win` (may be null) as a data URL.
 * Returns [icon, markBroken]: icon is undefined while loading and '' when there
 * is none; call markBroken from an <img> onError to fall back the same way.
 */
export function useAppIcon(win) {
    const key = win ? iconKey(win) : null;
    const [icon, setIcon] = useState(() => (key ? memory.get(key) : undefined));

    useEffect(() => {
        if (!win) return;
        let current = true;
        setIcon(memory.get(key));
        iconFor(win).then(url => {
            if (current) setIcon(url);
        });
        return () => { current = false; };
    }, [key]);

    return [icon, () => setIcon('')];
}
