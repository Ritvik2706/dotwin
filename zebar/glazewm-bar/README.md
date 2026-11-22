# glazewm-bar

A [Zebar](https://github.com/glzr-io/zebar) top bar for GlazeWM that also replaces
the Windows taskbar, which `CapsEscSwap.ahk` keeps hidden. It's built with React and Vite. `deploy.sh` builds it
and installs it as the Zebar pack `ritvik.glazewm-bar`
(`%APPDATA%\zebar\downloads\ritvik.glazewm-bar@1.0.0\`).

```
 ⚚ Ritvik  I II III  apps name    ♪ media  ── 12:34 ──    tray ➤ | mem cpu gpu | vol lux | sky Fri 6 Nov
  .bar-left                        .bar-center (media + clock)        .bar-right
```

## Layout

```
glazewm-bar/
├── zpack.json            Zebar pack manifest: window placement + shellCommands privileges
├── index.html            Vite entry for the bar (mounts src/main.jsx)
├── tray.html             Vite entry for the tray panel window (mounts src/tray/main.jsx)
├── public/               copied as-is next to index.html (nvidia.png)
├── scripts/*.ps1         PowerShell helpers the bar runs (see "Talking to Windows")
└── src/
    ├── main.jsx          mounts <Bar/>, loads global styles
    ├── Bar.jsx           ★ the layout: which widget sits in which island
    ├── providers.js      Zebar data providers (glazewm, audio, cpu, ...) + useProviders()
    ├── config.js         machine-specific paths (pack dir, AutoHotkey, NVIDIA), workspace split
    ├── styles/           theme.css (colours, sizes), base.css (resets), layout.css (bar + islands),
    │                     nerd-font/ (icon font, bundled so the bar needs no network)
    ├── widgets/          one file per widget, each with its own .css next to it
    │   └── systray/      the tray is big enough for a folder: items, saved layout, drag-and-drop,
    │                     hiding icons left behind by crashed apps, and the link to the panel
    ├── tray/             the tray panel: a second widget window that drops down under the arrow
    ├── ui/               shared building blocks: Island, InlineMenu/MenuItem, Stat, AppIcon
    ├── hooks/            useConfirm (click twice), useInterval (polling)
    └── lib/              non-React helpers
        ├── commands.js   every way the bar runs something outside Zebar
        ├── glazewm.js    window/workspace helpers (find, focus, close)
        ├── monitorTree.js  keeps the window list current (the provider misses closes)
        ├── dwindle.js    Hyprland-style tiling: splits along the focused window's longer side
        ├── appIcons.js   real app icons for windows (useAppIcon)
        ├── store.js      persistent key/value store (scripts/state.ps1)
        └── format.js     cx() class names, truncate()
```

## Widgets

| Widget | File | Click | Right-click | Other |
|---|---|---|---|---|
| Start button | `StartButton.jsx`, `PowerMenu.jsx` | power menu | Start menu; show/hide the Windows taskbar | |
| Workspaces | `Workspaces.jsx` | switch workspace | | scroll walks workspaces |
| Open apps | `OpenApps.jsx` (blackletter initials) | focus window (restores if minimized) | Focus / Close / End task | middle-click closes |
| Focused app | `FocusedApp.jsx` | | | name of the focused window's app |
| Media | `Media.jsx` | prev / play-pause / next | | hidden when nothing plays; sits by the clock's left wing, and the two are centred together as one group |
| Clock | `Clock.jsx` | notifications & calendar | | hover shows the date |
| Tray | `systray/`, `src/tray/` | forwarded to the app (double-click too); the arrow opens the tray panel | forwarded to the app | only pinned icons sit on the bar, before network, Bluetooth, mic and settings; the arrow counts the rest. The panel is its own window under the arrow, sized to fit every icon (pinned ones too, in an "on the bar" section), with the hovered icon's tooltip at the bottom; it closes on focus loss, Escape, after a click, or 0.7 s after the mouse leaves. Shift+click pins/unpins; drag to reorder, onto the arrow or between the panel's sections to unpin/pin. Grey until hovered (`--tray-rest-filter`) |
| Binding modes | `BindingModes.jsx` | | | shown while a GlazeWM mode is active |
| Memory, CPU | `SystemStats.jsx` | Task Manager | | skull and pierced heart; red above 90% / 85% |
| GPU temp | `Gpu.jsx` | Task Manager | | votive flame; `nvidia-smi` every 10 s, red at 80 °C; paused while GlazeWM is paused |
| Weather | `Weather.jsx` | | | sits with the date |
| Network | `Network.jsx` | network flyout | network settings | this, Bluetooth, mic and quick settings sit in the tray, before the arrow |
| Bluetooth | `Bluetooth.jsx` | Bluetooth settings | radio on/off | bright while connected, devices in the tooltip; `bluetooth.ps1` every 60 s, and on hover; paused while GlazeWM is paused |
| Volume | `Volume.jsx` | mute | output device picker | scroll ±2% |
| Brightness | `Brightness.jsx` | | | monitor brightness (DDC/CI) via `brightness.ahk` every 5 s; scroll ±5%; paused while GlazeWM is paused |
| Mic | `Mic.jsx` | mute | sound settings | |
| Quick settings | `QuickSettings.jsx` | quick settings panel | | |

Every widget returns `null` when it has nothing to show, so `Bar.jsx` places them all
unconditionally.

The right side is four groups with a faint rule between them (`.bar-right > * + *` in
`layout.css`): tray, machine (memory, CPU, GPU), controls (volume, brightness) and the day
(weather, date). A new group there gets its rule automatically.

The right side never grows over the clock. If too many icons are pinned, the tray's row
clips (the wheel scrolls it); the panel still shows them all. The clock's wings hang outside
their island, so `.clock-island` reserves their width with a margin.

## Tray panel

The panel is the `tray` widget in `zpack.json`: a hidden window that the bar starts on its own
(`startWidgetPreset`, ~1.5 s after the bar loads) and then only shows and hides, so it opens
instantly. It sizes and places itself with Tauri's window API (`setSize`, `setPosition`) under
the arrow. It has no providers or privileges of its own: the bar sends it the icons and runs
whatever it asks for over Tauri events (`widgets/systray/trayLink.js` lists them), so there is one
systray provider and one writer of the saved layout. Each build gets an id (`__TRAY_BUILD__` in
`vite.config.js`); a panel from an older build reloads itself when a new bar says hello.

If a tray icon is missing from the panel too, Zebar never received it: some apps (seen with
Flow Launcher and Ditto) don't re-register their icon after Zebar restarts, so they only show
when they were started after Zebar.

## How data flows

`providers.js` subscribes to Zebar's providers. `Bar.jsx` reads them with
`useProviders()` and passes each widget only the outputs it needs as props
(`<Volume audio={audio}/>`). Data with no provider (GPU, Bluetooth, brightness) is
polled by the widget itself with `useInterval(fn, ms, shouldPoll(glazewm))`. Every poll starts
a process, so polling stops while GlazeWM is paused, and a poll is
skipped while the previous one is still running.

## Adding a widget

1. Create `src/widgets/Foo.jsx`. Export a component, and add `import './Foo.css'` if it has styles.
2. If it needs provider data that isn't listed yet, add the provider to `providers.js`.
3. Place `<Foo .../>` in an island in `Bar.jsx`.
4. If it runs anything outside Zebar, see the next section.

For styling, use the variables in `styles/theme.css` rather than raw colours. For clickable
things, `clean-button` gives a button with no chrome. `Stat` gives an icon-and-value
readout. `InlineMenu` and `MenuItem` give a menu, because the bar is too short for
dropdowns, so menus replace part of the bar in place. Icons are
[Nerd Font](https://www.nerdfonts.com/cheat-sheet) classes: `<i className="nf nf-md-...">`.

## Talking to Windows

All of this lives in `lib/commands.js`:

- `openUri('ms-settings:...')` and `launch(program)` start something without waiting for it.
- `runScript('name', ...args)` runs `scripts/name.ps1`; `runTaskbarAhk(...)` and
  `runBrightnessAhk(...)` run `autohotkey/taskbar.ahk` and `autohotkey/brightness.ahk`, which
  relay to the running `CapsEscSwap.ahk`. All go through Zebar's `shellExec`, which returns output.
  The program plus its argument string must match a `shellCommands` privilege in
  `zpack.json`, and new privileges only apply after Zebar restarts (Alt+F7).
- Before launching either `.ahk` bridge, check `isAhkRunning(systray)` (`lib/ahk.js`): it looks
  for the script's tray icon, and says no until the systray provider has reported. The bar and script quit together for games, so this only matters if the
  script has stopped on its own.

| Script | Used by | Does |
|---|---|---|
| `appicon.ps1 <hwnd> <key>` | `lib/appIcons.js` | window icon as base64 PNG, looked up like the taskbar does; cached in `%APPDATA%\zebar\ritvik-bar-icons\` (delete it to refetch) |
| `bluetooth.ps1 status\|toggle` | `Bluetooth.jsx` | radio state + connected devices as JSON |
| `audiodevice.ps1 set <id>` | `Volume.jsx` | sets the default playback device (IPolicyConfig COM) |
| `endtask.ps1 <hwnd>` | `OpenApps.jsx` | kills the process owning a window |
| `windowvisible.ps1 <hwnd>` | `lib/glazewm.js` | whether a window closed on a hidden workspace is really gone from view |
| `state.ps1 get\|set <base64>` | `lib/store.js` | persistent JSON at `%APPDATA%\zebar\ritvik-bar-state.json`, because WebView2 localStorage is corrupted whenever Zebar exits |

## Build and deploy

`../../deploy.sh deploy` (it also runs on `git push`) does the following:

1. Builds the bar, running `npm ci` first if `node_modules` is missing or stale.
2. Copies `zpack.json` and `scripts/` into the pack folder.
3. Copies `dist/` into the pack folder. New assets go in before `index.html`, and stale ones are removed after it.

If the build fails, the deployed UI is left as it was. To build by hand, run `npm run build`
(or `npm run dev` to rebuild on save). Zebar picks up a new `index.html` on its own.
Restart Zebar (Alt+F7) after changing `zpack.json`.

`zOrder: bottom_most` in `zpack.json` keeps fullscreen windows above the bar, and
`monitorSelection: primary` keeps the bar visible with one monitor.
