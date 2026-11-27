import { shellExec } from 'zebar';

/**
 * The power actions in the start panel (src/start/), shared by the panel (which
 * draws them) and StartButton.jsx (which runs them). Those marked `confirm`
 * need a second click. Every command must match a shellCommands privilege in
 * zpack.json.
 */
const SLEEP_SCRIPT =
    "Add-Type -AssemblyName System.Windows.Forms; " +
    "[System.Windows.Forms.Application]::SetSuspendState('Suspend', $false, $false) | Out-Null";

export const POWER_ACTIONS = [
    { id: 'lock', label: 'Lock', glyph: 'lock', hint: 'Lock · Win+L' },
    { id: 'sleep', label: 'Sleep', glyph: 'sleep' },
    { id: 'signout', label: 'Sign out', glyph: 'signout', confirm: true },
    { id: 'restart', label: 'Restart', glyph: 'restart', confirm: true },
    { id: 'shutdown', label: 'Shut down', glyph: 'power', confirm: true },
];

export const RUN_POWER = {
    lock: () => shellExec('rundll32', ['user32.dll,LockWorkStation']),
    sleep: () => shellExec('powershell', ['-NoProfile', '-NonInteractive', '-Command', SLEEP_SCRIPT]),
    signout: () => shellExec('shutdown', ['/l']),
    restart: () => shellExec('shutdown', ['/r', '/t', '0']),
    shutdown: () => shellExec('shutdown', ['/s', '/t', '0']),
};
