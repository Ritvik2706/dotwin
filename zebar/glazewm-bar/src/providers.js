import { useEffect, useState } from 'react';
import * as zebar from 'zebar';
import { useMonitorTree } from './lib/monitorTree.js';

/**
 * Zebar providers: live data the bar renders. Each one is a subscription in
 * Zebar's backend, so only list what a widget uses. Widgets receive the
 * outputs as props, e.g. output.audio -> <Volume audio={...}/>.
 * Provider docs: https://github.com/glzr-io/zebar#providers
 */
const providers = zebar.createProviderGroup({
    glazewm: { type: 'glazewm' },
    cpu: { type: 'cpu' },
    // The clock shows minutes, and every update re-renders the whole bar.
    date: { type: 'date', formatting: 'HH:mm', refreshInterval: 5_000 },
    memory: { type: 'memory' },
    weather: { type: 'weather' },
    host: { type: 'host' },
    systray: { type: 'systray' },
    audio: { type: 'audio' },
    media: { type: 'media' },
    network: { type: 'network', refreshInterval: 15_000 },
});

/** Latest output of every provider; re-renders whenever any of them updates. */
export function useProviders() {
    const [output, setOutput] = useState(providers.outputMap);

    useEffect(() => {
        providers.onOutput(() => setOutput(providers.outputMap));
    }, []);

    // The provider's own copy goes stale (lib/monitorTree.js).
    const monitors = useMonitorTree();
    if (!output.glazewm || !monitors) return output;
    return { ...output, glazewm: { ...output.glazewm, allMonitors: monitors } };
}
