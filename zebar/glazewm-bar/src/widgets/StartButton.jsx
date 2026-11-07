import React, { useState } from 'react';
import { cx } from '../lib/format.js';
import Glyph from '../ui/Glyph.jsx';
import { PowerMenu, TaskbarMenu } from './PowerMenu.jsx';
import './StartButton.css';

/**
 * Windows logo + host name, at the far left.
 * Click: power menu. Right-click: Windows taskbar auto-hide toggle.
 * Either menu replaces the host name until closed.
 */
export default function StartButton({ systray, hostname }) {
    const [menu, setMenu] = useState(null); // null | 'power' | 'taskbar'
    const toggle = which => setMenu(menu === which ? null : which);
    const close = () => setMenu(null);
    // "RITVIK-WinDesktop" -> "Ritvik"
    const first = hostname?.split('-')[0] ?? '';
    const name = first.charAt(0) + first.slice(1).toLowerCase();

    return (
        <div className="start">
            <button
                className={cx('start-button clean-button', menu && 'open')}
                title={'Power options\nRight-click: taskbar auto-hide'}
                onClick={() => toggle('power')}
                onContextMenu={e => {
                    e.preventDefault();
                    toggle('taskbar');
                }}
            >
                <Glyph name="sigil"/>
            </button>
            {menu === 'power' ? <PowerMenu systray={systray} onClose={close}/>
                : menu === 'taskbar' ? <TaskbarMenu systray={systray} onClose={close}/>
                : name}
        </div>
    );
}
