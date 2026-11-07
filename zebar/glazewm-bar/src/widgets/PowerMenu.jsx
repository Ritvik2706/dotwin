import React, { useEffect, useRef, useState } from 'react';
import { shellExec } from 'zebar';
import { isAhkRunning } from '../lib/ahk.js';
import { openUri, runTaskbarAhk } from '../lib/commands.js';
import { useConfirm } from '../hooks/useConfirm.js';
import { BackItem, InlineMenu, MenuItem } from '../ui/InlineMenu.jsx';

/**
 * The two menus behind StartButton.
 *
 * PowerMenu (click): lock, sleep, sign out, restart, shut down, taskbar toggle,
 * Windows Settings. Destructive actions need a second click; the menu closes
 * itself AUTO_CLOSE_MS after the mouse leaves it.
 *
 * TaskbarMenu (right-click): just the taskbar toggle.
 *
 * CapsEscSwap.ahk keeps the Windows taskbar on auto-hide; the toggle switches
 * it to always-on-top and back via taskbar.ahk. If the script isn't running
 * (its tray icon is missing, lib/ahk.js) there's nothing to toggle, and
 * taskbar.ahk isn't launched at all.
 *
 * Every command in ACTIONS must match a shellCommands privilege in zpack.json.
 */
const AUTO_CLOSE_MS = 2000;

const SLEEP_SCRIPT =
    "Add-Type -AssemblyName System.Windows.Forms; " +
    "[System.Windows.Forms.Application]::SetSuspendState('Suspend', $false, $false) | Out-Null";

const ACTIONS = [
    { id: 'lock', label: 'Lock', icon: 'nf-md-lock',
      run: () => shellExec('rundll32', ['user32.dll,LockWorkStation']) },
    { id: 'sleep', label: 'Sleep', icon: 'nf-md-power_sleep',
      run: () => shellExec('powershell', ['-NoProfile', '-NonInteractive', '-Command', SLEEP_SCRIPT]) },
    { id: 'signout', label: 'Sign out', icon: 'nf-md-logout', confirm: true,
      run: () => shellExec('shutdown', ['/l']) },
    { id: 'restart', label: 'Restart', icon: 'nf-md-restart', confirm: true,
      run: () => shellExec('shutdown', ['/r', '/t', '0']) },
    { id: 'shutdown', label: 'Shut down', icon: 'nf-md-power', confirm: true,
      run: () => shellExec('shutdown', ['/s', '/t', '0']) },
];

async function taskbarCommand(action) {
    const { stdout } = await runTaskbarAhk(action);
    return JSON.parse(stdout);
}

/** { available, hidden } from CapsEscSwap.ahk; null until it answers. */
function useTaskbarState(systray) {
    const running = isAhkRunning(systray);
    const [taskbar, setTaskbar] = useState(null);

    useEffect(() => {
        if (!running) {
            setTaskbar({ available: false });
            return;
        }
        taskbarCommand('get')
            .then(setTaskbar)
            .catch(err => console.error('taskbar.ahk failed', err));
    }, [running]);

    return taskbar;
}

function TaskbarToggle({ taskbar, onClose }) {
    const label = taskbar.hidden ? 'Show taskbar' : 'Auto-hide taskbar';
    return (
        <MenuItem
            icon="nf-md-dock_bottom"
            label={label}
            title={`${taskbar.hidden ? 'Keep the Windows taskbar on top' : 'Auto-hide the Windows taskbar'} (Win+F4)`}
            onClick={() => {
                onClose();
                taskbarCommand('toggle').catch(err => console.error('taskbar.ahk failed', err));
            }}
        />
    );
}

export function TaskbarMenu({ systray, onClose }) {
    const taskbar = useTaskbarState(systray);

    return (
        <InlineMenu>
            {taskbar?.available ? <TaskbarToggle taskbar={taskbar} onClose={onClose}/>
                : taskbar ? <span className="inline-menu-note">CapsEscSwap.ahk not running</span>
                : null}
            <BackItem onClick={onClose}/>
        </InlineMenu>
    );
}

export function PowerMenu({ systray, onClose }) {
    const [armed, confirm] = useConfirm();
    const taskbar = useTaskbarState(systray);
    const closeTimer = useRef(null);

    useEffect(() => () => clearTimeout(closeTimer.current), []);

    const run = async action => {
        if (action.confirm && !confirm(action.id)) return;
        onClose();
        try {
            await action.run();
        } catch (err) {
            console.error(`power action '${action.id}' failed`, err);
        }
    };

    return (
        <InlineMenu
            onMouseEnter={() => clearTimeout(closeTimer.current)}
            onMouseLeave={() => {
                closeTimer.current = setTimeout(onClose, AUTO_CLOSE_MS);
            }}
        >
            {ACTIONS.map(action => (
                <MenuItem
                    key={action.id}
                    icon={action.icon}
                    label={armed === action.id ? `${action.label}?` : action.label}
                    title={action.confirm ? `${action.label} (click twice)` : action.label}
                    destructive={action.confirm}
                    confirming={armed === action.id}
                    onClick={() => run(action)}
                />
            ))}
            {taskbar?.available ? <TaskbarToggle taskbar={taskbar} onClose={onClose}/> : null}
            <MenuItem
                icon="nf-md-cog"
                title="Windows Settings"
                onClick={() => {
                    onClose();
                    openUri('ms-settings:');
                }}
            />
        </InlineMenu>
    );
}
