import React from 'react';
import { cx } from '../lib/format.js';
import './InlineMenu.css';

/**
 * The bar is too short for dropdowns, so menus replace part of the bar in
 * place: a row of MenuItems (power menu, open-apps window menu, audio output
 * picker). Extra props (onMouseEnter, ...) go to the row.
 */
export function InlineMenu({ className, children, ...rest }) {
    return <div className={cx('inline-menu', className)} {...rest}>{children}</div>;
}

/**
 * One menu button: icon plus optional label.
 * destructive: red icon on hover. confirming: armed for a second click (useConfirm).
 */
export function MenuItem({ icon, label, title, onClick, destructive, confirming, className }) {
    return (
        <button
            className={cx('menu-item clean-button', destructive && 'destructive', confirming && 'confirming', className)}
            title={title}
            onClick={onClick}
        >
            <i className={`nf ${icon}`}></i>
            {label != null ? <span>{label}</span> : null}
        </button>
    );
}

/** The ← button that closes a menu. */
export function BackItem({ onClick }) {
    return <MenuItem icon="nf-md-arrow_left" title="Back" onClick={onClick}/>;
}
