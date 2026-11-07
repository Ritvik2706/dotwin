import { useEffect, useRef, useState } from 'react';

/**
 * Click-twice confirmation for destructive actions.
 *
 *   const [armed, confirm] = useConfirm();
 *   onClick={() => { if (confirm('restart')) restart(); }}
 *
 * The first click on an id arms it and returns false; a second click on the
 * same id within `ms` returns true. `armed` is the armed id (or null), for
 * styling the button.
 */
export function useConfirm(ms = 3000) {
    const [armed, setArmed] = useState(null);
    const timer = useRef(null);

    useEffect(() => () => clearTimeout(timer.current), []);

    const confirm = id => {
        if (armed === id) return true;
        setArmed(id);
        clearTimeout(timer.current);
        timer.current = setTimeout(() => setArmed(null), ms);
        return false;
    };

    return [armed, confirm];
}
