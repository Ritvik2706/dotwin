/** Join class names, skipping falsy ones: cx('a', on && 'b') -> 'a b' / 'a'. */
export function cx(...names) {
    return names.filter(Boolean).join(' ');
}

/** Cut `text` to `max` characters, ending in an ellipsis when cut. */
export function truncate(text, max) {
    return text.length > max ? text.slice(0, max - 1) + '…' : text;
}
