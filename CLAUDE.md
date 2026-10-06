# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Windows application dotfiles managed from WSL. Config files live here and are deployed to their real Windows locations via `deploy.sh`. The repo was created because WSL symlinks to Windows paths can't be tracked by git directly.

## Key commands

```bash
./deploy.sh deploy   # copy repo → Windows (runs automatically on git push via pre-push hook)
./deploy.sh sync     # copy Windows → repo (use this to pull in changes made outside the repo)
```

## Architecture

Each top-level directory maps to a Windows config location:

| Repo dir | Windows path |
|---|---|
| `autohotkey/` | `C:\Users\Ritvik\Documents\AutoHotkey\` |
| `glazewm/config.yaml` | `C:\Users\Ritvik\.glzr\glazewm\config.yaml` |
| `wezterm.lua` | `C:\Users\Ritvik\.wezterm.lua` |
| `.wslconfig` | `C:\Users\Ritvik\.wslconfig` |
| `zebar/settings.json` | `C:\Users\Ritvik\.glzr\zebar\settings.json` |
| `zebar/glazewm-bar/` (`zpack.json`, `index.html`, `*.ps1`, `nvidia.png`) | `C:\Users\Ritvik\AppData\Roaming\zebar\downloads\ritvik.glazewm-bar@1.0.0\` |
| `flowlauncher/settings.json` | `C:\Users\Ritvik\AppData\Roaming\FlowLauncher\Settings\Settings.json` |
| `powertoys/settings.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\settings.json` |
| `powertoys/keyboard-manager/default.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\Keyboard Manager\default.json` |
| `powertoys/fancyzones-settings.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\FancyZones\settings.json` |
| `obs-studio/` | `C:\Users\Ritvik\AppData\Roaming\obs-studio\` |
| `sioyek/` | `C:\Users\Ritvik\AppData\Local\Programs\sioyek\` |
| `mpv/` | `C:\Program Files (x86)\mpv\portable_config\` |

## deploy.sh internals

- `set -euo pipefail` — aborts on any error except explicitly handled ones
- `copy_dir src dest [names...]` — `cp -r src/. dest/` with `mkdir -p`, then removes listed names from dest
- `clean_after_copy dest [find-predicates...]` — post-copy `find ... -delete` for things like `*.bak` and `*.log`
- `try_privileged_copy src dest label` — wraps `cp -r` with a graceful fallback message when write access to Program Files is denied

## Elevation requirement

`mpv/` deploys to `Program Files (x86)`, which requires admin privileges from WSL. The deploy script handles this gracefully: it prints manual copy instructions if the write fails rather than aborting. The `sync` direction (Windows → repo) always works without elevation since those paths are readable.

`sioyek/` was moved to `AppData\Local\Programs\sioyek\` specifically to avoid this — no elevation needed.

## Git hook setup

`hooks/pre-push` is tracked in the repo. Git is pointed at it via:
```
core.hooksPath = hooks   # stored in .git/config, set during initial setup
```
After cloning on a new machine, run `git config core.hooksPath hooks` once to re-activate it.

The hook always exits 0 so a deploy failure never blocks a push.

## Zebar bar

`zebar/settings.json` starts pack `ritvik.glazewm-bar`, which Zebar loads from its downloads dir (not `.glzr\zebar\`). Only `zpack.json`, `index.html`, `bluetooth.ps1` (Bluetooth status/toggle, run by the bar via a `shellCommands` privilege), `appicon.ps1` (looks up a window's icon the way the Windows taskbar does — window icon, UWP app logo, Start Menu shortcut icon, then exe icon — for the focused-app indicator and the open-apps island; cached in `%APPDATA%\zebar\ritvik-bar-icons\`, delete it to refetch), `endtask.ps1` (kills the process owning a window handle — the open-apps island's right-click "End task"), `state.ps1` (persists tray order/hidden icons to `%APPDATA%\zebar\ritvik-bar-state.json`, because WebView2 localStorage is corrupted whenever Zebar exits) and `nvidia.png` (stand-in tray icon) are tracked; `assets/` is the compiled build from the separate zebar-glazewm repo and is left in place on Windows. `zOrder: bottom_most` keeps fullscreen windows above the bar; `monitorSelection: primary` keeps it visible with one monitor.

**Changing the bar's UI:** the source lives at `C:\Users\Ritvik\Downloads\zebar-glazewm` (`/mnt/c/Users/Ritvik/Downloads/zebar-glazewm`; components in `src/components/`, styles in `styles.css`). `npm run build` writes `dist/`. To ship a build:
1. Copy `dist/assets/*` into the pack's `assets\` folder (not tracked here, so `deploy.sh` doesn't do it).
2. Copy `dist/index.html` over `zebar/glazewm-bar/index.html` here. It references the hashed asset filenames, which change on every build; a stale copy makes the next deploy point the bar at missing files and the bar goes invisible.
3. Deploy `index.html` to the pack.

Copy the new assets in **before** deleting old ones (or just leave old ones; they're harmless). New `shellCommands` privileges in `zpack.json` only take effect after Zebar restarts (Alt+F7). Zebar has no GPU provider; the status island's GPU temp runs `nvidia-smi` directly (privilege in `zpack.json`, polled every 5 s).

## AutoHotkey: gaming / display behaviour

`CapsEscSwap.ahk` pauses GlazeWM while CoD (`cod.exe`, `ModernWarfare.exe` — the `wzProcesses` map) runs, and resumes it when it exits. CoD runs at a custom resolution; afterwards Zebar's reserved strip comes back, but GlazeWM keeps tiling to the work area it read at the game's resolution until Zebar re-registers its appbar. So the script **always restarts Zebar ~3 s after CoD exits**. Other display changes (`WM_DISPLAYCHANGE`, Explorer restart) restart Zebar only if the primary monitor's work area has lost the strip. The running AutoHotkey instance doesn't reload on deploy — re-run the script (`#SingleInstance Force` replaces it) after changing it.

## Gitignored intentionally

- `*.log`, `*.bak` — runtime noise from Windows apps
- `mpv/cache/` — mpv watch history and thumbnail cache
- `glazewm/.claude/`, `zebar/.marketplace/` — app-internal dirs that land in those folders on Windows
- `.claude/` — Claude Code project metadata

## Sioyek config

Sioyek is a keyboard-driven PDF viewer. Its config files live in `C:\Program Files\sioyek\` (mapped from `sioyek/` in this repo):

- `prefs.config` / `keys.config` — base defaults shipped with sioyek; tracked here as-is
- `prefs_user.config` / `keys_user.config` — user overrides; these take priority and are where all customization goes

**Key concepts:**
- `:` opens the command palette
- `j`/`k` move the visual mark (reading ruler) line-by-line; right-click to place it
- `space`/`S-space` scroll pages; `/` or `C-f` to search
- `F8` dark mode, `F11` fullscreen, `F5` presentation mode
- **Portals** (`p`) — link two locations in a document (e.g. citation ↔ reference); opens both in a helper window side-by-side
- **Marks** — `m`+letter to set, `` ` ``+letter to jump back; lowercase = document-local, uppercase = global
- **Bookmarks** — `b` to add, `gb` to list
- **Highlights** — select text, press `h`, then a letter (a–z, 26 color types)
- `f` opens PDF links via keyboard (vimium-style)

**Color format in prefs:** 0.0–1.0 per channel (not 0–255).

**Setting as Windows default:** Settings → Apps → Default apps → search "pdf" → change `.pdf` association to `sioyek.exe`.

## Git identity

Commits use account `Ritvik2706`. Do not add `Co-Authored-By` trailers to commits.
