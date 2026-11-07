import React from 'react';
import { cx } from '../lib/format.js';

/** A group of widgets on the bar (styles/layout.css). Extra props go to its element. */
export default function Island({ className, children, ...props }) {
    return <div className={cx('island', className)} {...props}>{children}</div>;
}
