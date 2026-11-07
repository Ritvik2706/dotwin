import React, { useCallback, useState } from 'react';
import { shellExec } from 'zebar';
import { openTaskManager } from '../lib/commands.js';
import { shouldPoll, useInterval } from '../hooks/useInterval.js';
import Stat from '../ui/Stat.jsx';

/**
 * GPU core temperature via nvidia-smi (Zebar has no GPU provider).
 * nvidia-smi is a single cheap process (no PowerShell), so it can poll often.
 * Click opens Task Manager, like memory and cpu.
 */
const POLL_MS = 10_000;
const HOT_C = 80;

async function readTemp() {
    const { stdout } = await shellExec('nvidia-smi', [
        '--query-gpu=temperature.gpu', '--format=csv,noheader,nounits',
    ]);
    // One line per GPU; the first is the one that matters here.
    const temp = parseInt(stdout.split('\n')[0]);
    return Number.isFinite(temp) ? temp : null;
}

export default function Gpu({ glazewm }) {
    const [temp, setTemp] = useState(null);

    useInterval(useCallback(() => (
        readTemp().then(setTemp).catch(err => console.error('nvidia-smi failed', err))
    ), []), POLL_MS, shouldPoll(glazewm));

    if (temp === null) return null;

    return (
        <Stat glyph="flame" value={`${temp}°`} high={temp >= HOT_C}
              title="GPU temperature" onClick={() => openTaskManager()}/>
    );
}
