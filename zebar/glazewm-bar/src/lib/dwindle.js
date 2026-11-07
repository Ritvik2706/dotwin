import { WmEventType } from 'glazewm';

/**
 * Hyprland's dwindle layout. GlazeWM has no automatic layouts: the next window
 * splits the focused one along the current tiling direction. So on every focus
 * change this points that direction along the focused window's longer side, and
 * windows spiral in as they open. Alt+T still overrides it until focus moves.
 * Event-driven, on the connection the bar already has, and gone with the bar for games.
 */
const EVENTS = [WmEventType.FOCUS_CHANGED, WmEventType.WINDOW_MANAGED];
const MERGE_MS = 30;

export function startDwindle(client) {
    let timer = null;

    const apply = async () => {
        try {
            const { focused } = await client.queryFocused();
            if (focused?.type !== 'window' || focused.state?.type !== 'tiling') return;
            const wanted = focused.width >= focused.height ? 'horizontal' : 'vertical';
            const { tilingDirection } = await client.queryTilingDirection();
            if (tilingDirection !== wanted) await client.runCommand(`set-tiling-direction ${wanted}`);
        } catch (err) {
            // Paused, or the window just closed: the next focus change tries again.
            console.debug('dwindle skipped', err);
        }
    };

    return client.subscribeMany(EVENTS, () => {
        clearTimeout(timer);
        timer = setTimeout(apply, MERGE_MS);
    });
}
