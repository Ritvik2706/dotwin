import { shellExec, shellSpawn } from 'zebar';
import { AUTOHOTKEY_EXE, BRIGHTNESS_AHK, SCRIPTS_DIR, TASKBAR_AHK } from '../config.js';

/**
 * Every way the bar reaches outside Zebar. All of it goes through Zebar's shell
 * API: each program + argument string must match a `shellCommands` privilege in
 * zpack.json, and new privileges only apply after Zebar restarts (Alt+F7).
 * GlazeWM's `shell-exec` isn't used: it does nothing while paused, and Zebar has
 * announced it won't stay available to widgets.
 */

/**
 * Run a GlazeWM command from a click. It rejects when the command can't run
 * (GlazeWM paused, window just closed), which is never worth more than a log.
 */
export function runGlaze(glazewm, command, subjectId) {
    return glazewm?.runCommand(command, subjectId)
        ?.catch(err => console.error(`glazewm: ${command} failed`, err));
}

/** Start a program without waiting for it, e.g. Task Manager. */
export function launch(program, args = []) {
    shellSpawn(program, args).catch(err => console.error(`failed to start ${program}`, err));
}

/**
 * Open a Windows shell URI (settings pages, flyouts).
 * Examples: 'ms-settings:sound', 'ms-actioncenter:', 'ms-availablenetworks:'.
 */
export function openUri(uri) {
    launch('explorer', [uri]);
}

export function openTaskManager() {
    launch('taskmgr');
}

/**
 * Run scripts/<name>.ps1 and resolve to { stdout, stderr, code }.
 * Privilege: an argsRegex ending in `<name>\.ps1 <args>$`.
 */
export function runScript(name, ...args) {
    return shellExec('powershell', [
        '-NoProfile', '-NonInteractive', '-ExecutionPolicy', 'Bypass',
        '-File', `${SCRIPTS_DIR}\\${name}.ps1`, ...args.map(String),
    ]);
}

/** Run scripts/<name>.ps1 and parse its stdout as JSON. */
export async function runScriptJson(name, ...args) {
    const { stdout } = await runScript(name, ...args);
    return JSON.parse(stdout);
}

/**
 * Send a command to CapsEscSwap.ahk through taskbar.ahk:
 *   'get' / 'toggle' -> { available, hidden } (Windows taskbar state)
 *   'focus', hwnd    -> focus a window the way a taskbar click does
 */
export function runTaskbarAhk(...args) {
    return shellExec(AUTOHOTKEY_EXE, [TASKBAR_AHK, ...args.map(String)]);
}

/**
 * Monitor brightness through brightness.ahk -> CapsEscSwap.ahk (DDC/CI).
 * action 'get' | 'up' | 'down'; resolves to { available, level }.
 */
export async function runBrightnessAhk(action) {
    const { stdout } = await shellExec(AUTOHOTKEY_EXE, [BRIGHTNESS_AHK, action]);
    return JSON.parse(stdout);
}
