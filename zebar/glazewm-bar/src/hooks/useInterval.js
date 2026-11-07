import { useEffect } from 'react';

/**
 * Call `fn` once now and then every `ms` while the component is mounted and
 * `enabled` is true; turning `enabled` back on polls straight away.
 * For data Zebar has no provider for (GPU temp, Bluetooth), polled via a command.
 *
 * If `fn` returns a promise, ticks are skipped until it settles, so a slow
 * command never has two copies running at once.
 *
 * `fn` must be stable (defined outside the component, or wrapped in
 * useCallback), or the timer restarts on every render.
 */
export function useInterval(fn, ms, enabled = true) {
    useEffect(() => {
        if (!enabled) return undefined;
        let inFlight = false;
        const tick = () => {
            if (inFlight) return;
            const result = fn();
            if (result instanceof Promise) {
                inFlight = true;
                result.finally(() => { inFlight = false; });
            }
        };
        tick();
        const id = setInterval(tick, ms);
        return () => clearInterval(id);
    }, [fn, ms, enabled]);
}

/**
 * Whether polling widgets should run: not while GlazeWM is paused (Alt+\),
 * nor before the provider has reported.
 */
export function shouldPoll(glazewm) {
    return Boolean(glazewm) && !glazewm.isPaused;
}
