import { useEffect, useRef, useState } from 'react';
import { useInterval } from '../../hooks/useInterval.js';

/**
 * Ids of tray icons whose app has died.
 *
 * An app that crashes or is killed never removes its icon, and Zebar keeps it
 * forever: it only notices when an action is sent to the icon, and even then
 * just returns an error. So the bar sends each icon a harmless "mouse left" and
 * reads that error. Some live icons always return it (they have no callback), so
 * an icon only counts as dead if it answered before.
 *
 * Runs when the icon list or the open windows change, on hover, and on a timer.
 * The timer is needed because a tray-only app closes no window when it's killed,
 * and in a multi-process app the tray window can outlive the check a closing
 * window starts. It starts no process. It skips while the pointer is on the tray,
 * since "mouse left" also tells the app to close the popup it's showing there.
 */
const SETTLE_MS = 500;
const POLL_MS = 5000;

// systray-util's InoperableIcon error.
const isInoperable = err => /unable to send event to icon/i.test(String(err?.message ?? err));

export function useDeadIcons(systray, windowsKey) {
    const [dead, setDead] = useState(() => new Set());
    const answered = useRef(new Set());
    const latest = useRef(systray);
    latest.current = systray;

    const check = useRef(async () => {
        const tray = latest.current;
        if (!tray) return;
        const results = await Promise.all(tray.icons.map(icon =>
            tray.onHoverLeave(icon.id).then(() => [icon.id, true], err => [icon.id, !isInoperable(err)])
        ));
        const next = new Set();
        for (const [id, alive] of results) {
            if (alive) answered.current.add(id);
            else if (answered.current.has(id)) next.add(id);
        }
        setDead(prev => (
            prev.size === next.size && [...next].every(id => prev.has(id)) ? prev : next
        ));
    }).current;

    const poll = useRef(() => {
        if (!document.querySelector('.tray:hover')) return check();
    }).current;
    useInterval(poll, POLL_MS, Boolean(systray));

    const iconsKey = (systray?.icons ?? []).map(icon => icon.id).join('\n');

    useEffect(() => {
        const timer = setTimeout(check, SETTLE_MS);
        return () => clearTimeout(timer);
    }, [iconsKey, windowsKey]);

    return { dead, check };
}
