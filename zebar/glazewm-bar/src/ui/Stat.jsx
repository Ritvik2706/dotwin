import React from 'react';
import { cx } from '../lib/format.js';
import Glyph from './Glyph.jsx';
import './Stat.css';

/**
 * Readout: a sigil, then the value (memory, cpu, gpu, weather). `high` turns both
 * red. With onClick it's a button, otherwise plain text.
 */
export default function Stat({ className, glyph, value, high, title, onClick }) {
    const Tag = onClick ? 'button' : 'div';
    return (
        <Tag className={cx('stat', onClick && 'clean-button', high && 'high', className)} title={title} onClick={onClick}>
            <Glyph name={glyph}/>
            <span className="stat-value">{value}</span>
        </Tag>
    );
}
