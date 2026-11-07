import { useRef, useState } from 'react';

/**
 * Drag-and-drop for tray icons, with pointer events: Tauri's native drag-drop
 * handler swallows HTML5 drag-and-drop inside Zebar windows.
 *
 * Drop targets, found by hit-testing the DOM under the pointer:
 *   - another icon ([data-tray-key]): insert before/after it, joining its group
 *   - the chevron (.tray-toggle): hide the icon
 *   - empty space in the tray (.tray): show it, at the end of the visible group
 *
 * Returns:
 *   drag           null, or { key, overKey?, overHidden?, after?, overToggle?, overBox? }
 *   handlers(item) pointer handlers to spread onto an icon's button
 *   suppressClick  ref; true right after a drop so the release isn't a click
 */
const DRAG_THRESHOLD_PX = 5;

function hitTest(x, y) {
    const el = document.elementFromPoint(x, y);
    if (!el) return {};
    if (el.closest('.tray-toggle')) return { overToggle: true };
    const icon = el.closest('[data-tray-key]');
    if (icon) {
        const rect = icon.getBoundingClientRect();
        return {
            overKey: icon.dataset.trayKey,
            overHidden: icon.dataset.trayHidden === '1',
            after: x > rect.left + rect.width / 2,
        };
    }
    if (el.closest('.tray')) return { overBox: true };
    return {};
}

export function useTrayDrag({ sorted, setOrder, setHidden }) {
    const [drag, setDrag] = useState(null);
    const pending = useRef(null);
    const suppressClick = useRef(false);

    function drop(key, hit) {
        const others = sorted.map(item => item.key).filter(k => k !== key);
        if (hit.overToggle) {
            setHidden(key, true);
        } else if (hit.overKey && hit.overKey !== key) {
            others.splice(others.indexOf(hit.overKey) + (hit.after ? 1 : 0), 0, key);
            setOrder(others);
            setHidden(key, hit.overHidden);
        } else if (hit.overBox) {
            setOrder([...others, key]);
            setHidden(key, false);
        }
    }

    const handlers = item => ({
        onPointerDown: e => {
            if (e.button !== 0 || e.shiftKey) return;
            pending.current = { key: item.key, x: e.clientX, y: e.clientY, dragging: false };
            e.currentTarget.setPointerCapture(e.pointerId);
        },
        onPointerMove: e => {
            const p = pending.current;
            if (!p) return;
            if (!p.dragging) {
                if (Math.abs(e.clientX - p.x) + Math.abs(e.clientY - p.y) < DRAG_THRESHOLD_PX) return;
                p.dragging = true;
            }
            setDrag({ key: p.key, ...hitTest(e.clientX, e.clientY) });
        },
        onPointerUp: e => {
            const p = pending.current;
            pending.current = null;
            if (!p?.dragging) return;
            // Swallow the click that follows the release; reset in case none fires.
            suppressClick.current = true;
            setTimeout(() => { suppressClick.current = false; }, 0);
            setDrag(null);
            drop(p.key, hitTest(e.clientX, e.clientY));
        },
        onPointerCancel: () => {
            pending.current = null;
            setDrag(null);
        },
    });

    return { drag, handlers, suppressClick };
}
