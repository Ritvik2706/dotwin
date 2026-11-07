import React, { useEffect, useState } from 'react';
import { runScript } from '../lib/commands.js';
import { allWindows, appName, closeWindow, focusWindow } from '../lib/glazewm.js';
import { cx } from '../lib/format.js';
import { useConfirm } from '../hooks/useConfirm.js';
import AppIcon from '../ui/AppIcon.jsx';
import Island from '../ui/Island.jsx';
import { BackItem, InlineMenu, MenuItem } from '../ui/InlineMenu.jsx';
import './OpenApps.css';

/**
 * Open windows as blackletter initials, standing in for the hidden Windows taskbar.
 * Every window GlazeWM manages is listed, grouped by workspace (a separator
 * between groups); windows on workspaces not on screen are dimmed. The
 * focused window is left out: FocusedApp shows it right after this island.
 *
 * - Click focuses the window (switching workspace if needed).
 * - Middle-click closes it.
 * - Right-click swaps the icons for WindowMenu: Focus, Close, End task.
 *   End task kills the owning process (scripts/endtask.ps1) and needs a
 *   second click.
 */
export default function OpenApps({ glazewm, systray }) {
    const [menuId, setMenuId] = useState(null);
    const all = allWindows(glazewm);
    const entries = all.filter(e => !e.win.hasFocus);
    // Looked up among all windows, so the menu stays open if its window gains focus.
    const menuEntry = all.find(e => e.win.id === menuId);
    const menuOpen = Boolean(menuEntry);

    // Window went away while its menu was open.
    useEffect(() => {
        if (menuId && !menuOpen) setMenuId(null);
    }, [menuId, menuOpen]);

    if (menuEntry) {
        return (
            <Island className="open-apps">
                <WindowMenu glazewm={glazewm} systray={systray} {...menuEntry} onClose={() => setMenuId(null)}/>
            </Island>
        );
    }

    if (entries.length === 0) return null;

    return (
        <Island className="open-apps">
            {entries.map(({ win, workspace }, i) => (
                <React.Fragment key={win.id}>
                    {i > 0 && entries[i - 1].workspace.id !== workspace.id
                        ? <span className="open-apps-separator"></span>
                        : null}
                    <button
                        className={cx('open-app clean-button', !workspace.isDisplayed && 'elsewhere')}
                        title={`${win.title || win.processName}\n${win.processName} · workspace ${workspace.displayName ?? workspace.name}`}
                        onClick={() => focusWindow(glazewm, systray, win, workspace)}
                        onContextMenu={e => {
                            e.preventDefault();
                            setMenuId(win.id);
                        }}
                        onAuxClick={e => {
                            if (e.button === 1) closeWindow(glazewm, win, workspace);
                        }}
                    >
                        {appName(win).charAt(0)}
                    </button>
                </React.Fragment>
            ))}
        </Island>
    );
}

function WindowMenu({ glazewm, systray, win, workspace, onClose }) {
    const [armed, confirm] = useConfirm();

    const run = action => {
        onClose();
        action();
    };

    return (
        <InlineMenu>
            <span className="open-apps-menu-title" title={win.title}>
                <AppIcon win={win}/>
                <span>{win.title || win.processName}</span>
            </span>
            <MenuItem icon="nf-md-eye" label="Focus" title="Focus window"
                      onClick={() => run(() => focusWindow(glazewm, systray, win, workspace))}/>
            <MenuItem icon="nf-md-close" label="Close" title="Close window (middle-click)"
                      onClick={() => run(() => closeWindow(glazewm, win, workspace))}/>
            <MenuItem
                icon="nf-md-skull"
                label={armed ? 'End task?' : 'End task'}
                title={`Kill ${win.processName}`}
                destructive
                confirming={armed}
                onClick={() => {
                    if (!confirm('endtask')) return;
                    run(() => runScript('endtask', win.handle).catch(err => console.error('endtask.ps1 failed', err)));
                }}
            />
            <BackItem onClick={onClose}/>
        </InlineMenu>
    );
}
