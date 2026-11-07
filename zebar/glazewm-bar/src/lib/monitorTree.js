import { useEffect, useState } from 'react';
import { WmClient, WmEventType } from 'glazewm';
import { startDwindle } from './dwindle.js';

/**
 * GlazeWM's monitor -> workspace -> window tree, kept current.
 *
 * Zebar's glazewm provider only re-reads it on focus and workspace events, and
 * ignores windows opening and closing. A window that closes without moving
 * focus (anything on another workspace) stayed in the open-apps island until
 * something else happened. Its queries can also finish out of order, so an old
 * reply could overwrite a newer one. This subscribes to window events too,
 * merges bursts of events, and runs one query at a time.
 *
 * GlazeWM also keeps a window that hides itself on a hidden workspace, until its
 * process exits. markWindowHidden() drops one from the tree. It comes back if it
 * takes focus, which is how a close-to-tray app reopens.
 */
const EVENTS = [
    WmEventType.WINDOW_MANAGED,
    WmEventType.WINDOW_UNMANAGED,
    WmEventType.FOCUS_CHANGED,
    WmEventType.FOCUSED_CONTAINER_MOVED,
    WmEventType.WORKSPACE_ACTIVATED,
    WmEventType.WORKSPACE_DEACTIVATED,
    WmEventType.WORKSPACE_UPDATED,
];
const MERGE_MS = 30;

const hiddenWindows = new Set();
let refreshTree = () => {};

export function markWindowHidden(id) {
    hiddenWindows.add(id);
    refreshTree();
}

function withoutHidden(container) {
    const children = (container.children ?? []).filter(child => {
        if (!hiddenWindows.has(child.id)) return true;
        if (child.hasFocus) hiddenWindows.delete(child.id);
        return child.hasFocus;
    });
    return { ...container, children: children.map(withoutHidden) };
}

/** Latest monitors from GlazeWM, or null until the first reply. */
export function useMonitorTree() {
    const [monitors, setMonitors] = useState(null);

    useEffect(() => {
        const client = new WmClient();
        let stopped = false;
        let timer = null;
        let querying = false;
        let stale = false;
        let unlisten = null;
        let unlistenDwindle = null;

        const refresh = async () => {
            if (querying) {
                stale = true;   // the running query may predate this event
                return;
            }
            querying = true;
            do {
                stale = false;
                try {
                    const reply = await client.queryMonitors();
                    if (!stopped) setMonitors(reply.monitors.map(withoutHidden));
                } catch (err) {
                    console.error('glazewm: monitor query failed', err);
                }
            } while (stale && !stopped);
            querying = false;
        };

        const schedule = () => {
            clearTimeout(timer);
            timer = setTimeout(refresh, MERGE_MS);
        };

        refreshTree = schedule;

        // Also runs on reconnects, which is when a restarted GlazeWM comes back.
        client.onConnect(async () => {
            schedule();
            unlisten ??= await client.subscribeMany(EVENTS, schedule);
            unlistenDwindle ??= await startDwindle(client);
        });

        return () => {
            stopped = true;
            clearTimeout(timer);
            unlisten?.();
            unlistenDwindle?.();
            client.closeConnection();
        };
    }, []);

    return monitors;
}
