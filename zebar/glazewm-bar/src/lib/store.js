import { runScript } from './commands.js';

/**
 * Small persistent key/value store backed by scripts/state.ps1 (a JSON file at
 * %APPDATA%\zebar\ritvik-bar-state.json). Used instead of localStorage, which
 * WebView2 corrupts when Zebar exits.
 *
 *   const store = await loadStore();   // whole object, loaded once
 *   setStoreValue('key', value);       // debounced write of the whole object
 */
const WRITE_DELAY_MS = 300;

let cache = null;
let loading = null;
let writeTimer = null;
let readFailed = false;

export function loadStore() {
    if (!loading) {
        loading = runScript('state', 'get')
            .then(({ stdout }) => {
                try {
                    cache = JSON.parse(stdout || '{}');
                } catch {
                    cache = {};
                }
                return cache;
            })
            .catch(err => {
                console.error('state.ps1 get failed', err);
                readFailed = true;   // what's saved is unknown, so don't replace it
                cache = {};
                return cache;
            });
    }
    return loading;
}

export async function setStoreValue(key, value) {
    await loadStore();
    cache[key] = value;
    if (readFailed) return;
    clearTimeout(writeTimer);
    writeTimer = setTimeout(() => {
        // Base64 so the JSON survives the command line (and state.ps1's privilege regex).
        const json = JSON.stringify(cache);
        const base64 = btoa(String.fromCharCode(...new TextEncoder().encode(json)));
        runScript('state', 'set', base64).catch(err => console.error('state.ps1 set failed', err));
    }, WRITE_DELAY_MS);
}
