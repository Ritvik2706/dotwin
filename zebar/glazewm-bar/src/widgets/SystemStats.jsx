import React from 'react';
import { openTaskManager } from '../lib/commands.js';
import Stat from '../ui/Stat.jsx';

/** Memory and CPU usage from Zebar's providers. Click opens Task Manager. */
const MEMORY_HIGH = 90;
const CPU_HIGH = 85;

export function Memory({ memory }) {
    if (!memory) return null;
    return (
        <Stat glyph="skull" value={Math.round(memory.usage)} high={memory.usage > MEMORY_HIGH}
              title="Memory %" onClick={() => openTaskManager()}/>
    );
}

export function Cpu({ cpu }) {
    if (!cpu) return null;
    return (
        <Stat glyph="heart" value={Math.round(cpu.usage)} high={cpu.usage > CPU_HIGH}
              title="CPU %" onClick={() => openTaskManager()}/>
    );
}
