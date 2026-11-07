import React from 'react';
import './Glyph.css';

/**
 * The bar's own icons, cut from the same shapes as the clock's blades. Drawn on a
 * 16x16 grid in currentColor.
 */
const SHAPES = {
    // Winged sigil, after the figure on the wallpaper. The wings spread on hover (Glyph.css).
    sigil: <>
        <path d="M8 0 9.1 7 8 16 6.9 7Z"/>
        <g className="glyph-wing-left">
            <path d="M6.6 8.6 0 1.5 1.2 7.4Z"/>
            <path d="M6.6 10.6 1.4 8.4 2.8 11.2Z"/>
        </g>
        <g className="glyph-wing-right">
            <path d="M9.4 8.6 16 1.5 14.8 7.4Z"/>
            <path d="M9.4 10.6 14.6 8.4 13.2 11.2Z"/>
        </g>
    </>,
    // Four-point glint.
    // Scythe-cut arrow: opens the tray, and turns to fold it away (Systray.css).
    arrow: <path d="M1 8C6 6.4 11 4.4 15 1C13.2 4.6 12.2 6.4 12.2 8C12.2 9.6 13.2 11.4 15 15C11 11.6 6 9.6 1 8Z"/>,
    // Memento mori: memory.
    skull: <path fillRule="evenodd" d="M8 1C3.5 1 2 4 2 7C2 9 3 10 4.5 10.5V14H6V12.2H7.2V14H8.8V12.2H10V14H11.5V10.5C13 10 14 9 14 7C14 4 12.5 1 8 1ZM4.4 6.3 7 5.8V8.4H5ZM11.6 6.3 9 5.8V8.4H11ZM8 8.9 8.9 10.4H7.1Z"/>,
    // The sacred heart, pierced by a blade: the CPU.
    heart: <>
        <path d="M8 15 1.6 7.2C.4 4.2 2.8 1.8 5 2.4 6.5 2.8 7.5 3.9 8 5 8.5 3.9 9.5 2.8 11 2.4 13.2 1.8 15.6 4.2 14.4 7.2Z"/>
        <path className="glyph-cut" d="M15.5 .5 1 13"/>
        <path d="M16 0 11.8 2 14 4.2Z"/>
    </>,
    // Votive flame: GPU temperature.
    flame: <path fillRule="evenodd" d="M8 0C8.5 3 12.6 5 12.6 10 12.6 13.2 10.5 15.6 8 15.6 5.5 15.6 3.4 13.2 3.4 10 3.4 8 4.4 6.5 5.5 5.5 5.7 7 6.3 7.8 7 8 6.5 5 7 2.5 8 0ZM8 9C8.6 10.5 10 11 10 12.7 10 14 9 14.8 8 14.8 7 14.8 6 14 6 12.7 6 11.5 7.4 11 8 9Z"/>,
    // Crescent and star: the weather.
    moon: <>
        <path d="M10.5 1C5.5 1 2 4.5 2 8 2 12 5.5 15 10.5 15 7.5 13.5 6 11 6 8 6 5 7.5 2.5 10.5 1Z"/>
        <path d="M12 4.5 12.8 7.2 15.5 8 12.8 8.8 12 11.5 11.2 8.8 8.5 8 11.2 7.2Z"/>
    </>,
    // Church bell: volume.
    bell: <>
        <path d="M8 .5 9.2 2.4C11.4 3.3 12 5.8 12 8 12 10 13 11.5 14.8 12.6H1.2C3 11.5 4 10 4 8 4 5.8 4.6 3.3 6.8 2.4Z"/>
        <path d="M6.3 13.5H9.7L8 15.8Z"/>
    </>,
    bellMuted: <>
        <path d="M8 .5 9.2 2.4C11.4 3.3 12 5.8 12 8 12 10 13 11.5 14.8 12.6H1.2C3 11.5 4 10 4 8 4 5.8 4.6 3.3 6.8 2.4Z"/>
        <path d="M6.3 13.5H9.7L8 15.8Z"/>
        <path className="glyph-cut" d="M15 1 1 15"/>
    </>,
    // Radiant star: brightness.
    lux: <>
        <path d="M8 0 9.2 6.8 16 8 9.2 9.2 8 16 6.8 9.2 0 8 6.8 6.8Z"/>
        <path d="M2.6 2.6 6.4 5.2 5.2 6.4ZM13.4 2.6 10.8 6.4 9.6 5.2ZM13.4 13.4 9.6 10.8 10.8 9.6ZM2.6 13.4 5.2 9.6 6.4 10.8Z"/>
    </>,
    bluetooth: <path className="glyph-line" d="M3.5 4.5 12 11.5 8 15V1L12 4.5 3.5 11.5"/>,
    mic: <>
        <path d="M8 0 11 5 8 10.5 5 5Z"/>
        <path className="glyph-line" d="M3 6.5 8 13.5 13 6.5M8 13.5V16"/>
    </>,
    micMuted: <>
        <path d="M8 0 11 5 8 10.5 5 5Z"/>
        <path className="glyph-line" d="M3 6.5 8 13.5 13 6.5M8 13.5V16M1 15 15 1"/>
    </>,
    settings: <>
        <path d="M0 2 16 3.5 0 5Z"/>
        <path d="M16 6.5 0 8 16 9.5Z"/>
        <path d="M0 11 16 12.5 0 14Z"/>
    </>,
};

/** Rising spikes for the network; `bars` of the four are lit. */
function Spikes({ bars }) {
    return [[0, 11], [4, 8], [8, 4.5], [12, 1]].map(([x, top], i) => (
        <path key={x} d={`M${x} 15H${x + 3.4}L${x + 1.7} ${top}Z`} opacity={i < bars ? 1 : 0.28}/>
    ));
}

export default function Glyph({ name, bars }) {
    return (
        <svg className="glyph" viewBox="0 0 16 16" aria-hidden="true">
            {name === 'network' ? <Spikes bars={bars}/> : SHAPES[name]}
        </svg>
    );
}
