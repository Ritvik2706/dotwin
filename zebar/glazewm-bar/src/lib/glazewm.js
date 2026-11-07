import { PRIMARY_MONITOR_WORKSPACES } from '../config.js';
import { isAhkRunning } from './ahk.js';
import { runGlaze, runScript, runTaskbarAhk } from './commands.js';
import { markWindowHidden } from './monitorTree.js';

/**
 * Helpers over the glazewm provider's output (monitors -> workspaces ->
 * split containers -> windows).
 */

const workspaceNumber = workspace => parseInt(workspace?.name) || 0;

const isPrimaryWorkspace = n =>
    n >= PRIMARY_MONITOR_WORKSPACES.first && n <= PRIMARY_MONITOR_WORKSPACES.last;

/**
 * Workspaces to show: the focused monitor's, or all of them with one monitor.
 * Empty ones are left out unless they're on screen: keep_alive keeps them around
 * in GlazeWM after the last window closes.
 */
export function workspacesToShow(glazewm) {
    const monitors = glazewm.allMonitors ?? [];
    const all = monitors
        .flatMap(m => m.children ?? m.workspaces ?? [])
        .filter(w => w.name && (w.children?.length > 0 || w.hasFocus || w.isDisplayed));
    const onFocusedMonitor = isPrimaryWorkspace(workspaceNumber(glazewm.focusedWorkspace));
    const shown = monitors.length <= 1
        ? all
        : all.filter(w => {
            const n = workspaceNumber(w);
            return onFocusedMonitor ? isPrimaryWorkspace(n) : n > PRIMARY_MONITOR_WORKSPACES.last;
        });
    return shown.length > 0 ? shown : (glazewm.currentWorkspaces ?? []);
}

/** Windows anywhere under `node` (they can be nested inside split containers). */
function collectWindows(node, workspace, out) {
    for (const child of node?.children ?? []) {
        if (child.type === 'window') out.push({ win: child, workspace });
        else collectWindows(child, workspace, out);
    }
    return out;
}

/** Every managed window as { win, workspace }, ordered by workspace number. */
export function allWindows(glazewm) {
    const out = [];
    for (const monitor of glazewm?.allMonitors ?? []) {
        const workspaces = [...(monitor.children ?? [])]
            .sort((a, b) => workspaceNumber(a) - workspaceNumber(b));
        for (const workspace of workspaces) collectWindows(workspace, workspace, out);
    }
    return out;
}

/**
 * A window's app as a short name: "wezterm-gui" -> "Wezterm". UWP apps all run as
 * ApplicationFrameHost, so those go by the end of their title.
 */
export function appName(win) {
    const raw = /^ApplicationFrameHost$/i.test(win.processName)
        ? (win.title ?? '').split(' - ').pop()
        : win.processName.split(/[-_.]/)[0];
    return raw.charAt(0).toUpperCase() + raw.slice(1);
}

/**
 * The focused window, or null when focus is on an empty workspace. Read from the
 * same tree as the open-apps list, so a window never shows in both or in neither.
 */
export function focusedWindow(glazewm) {
    return allWindows(glazewm).find(e => e.win.hasFocus)?.win ?? null;
}

/**
 * Focus a window, switching to its workspace if it isn't displayed
 * (`focus --container-id` alone doesn't). GlazeWM ignores commands while
 * paused (Alt+\), so then CapsEscSwap.ahk focuses the window the way a Windows
 * taskbar click does, if it's running.
 */
export async function focusWindow(glazewm, systray, win, workspace) {
    if (glazewm.isPaused) {
        if (!isAhkRunning(systray)) return undefined;
        return runTaskbarAhk('focus', win.handle)
            .catch(err => console.error('taskbar.ahk failed', err));
    }
    if (workspace && !workspace.isDisplayed) {
        await runGlaze(glazewm, `focus --workspace ${workspace.name}`);
    }
    // Focusing alone leaves it minimized, and marked focused, so its icon vanishes.
    if (win.state?.type === 'minimized') {
        await runGlaze(glazewm, 'toggle-minimized', win.id);
    }
    return runGlaze(glazewm, `focus --container-id ${win.id}`);
}

const CLOSE_SETTLE_MS = 700;

/**
 * Close a window. One on a hidden workspace may hide rather than quit
 * (close-to-tray), which GlazeWM misses, so check and drop it from the list.
 */
export async function closeWindow(glazewm, win, workspace) {
    await runGlaze(glazewm, 'close', win.id);
    if (workspace?.isDisplayed) return;
    await new Promise(resolve => setTimeout(resolve, CLOSE_SETTLE_MS));
    try {
        const { stdout } = await runScript('windowvisible', win.handle);
        if (stdout.trim() === '0') markWindowHidden(win.id);
    } catch (err) {
        console.error('windowvisible.ps1 failed', err);
    }
}
