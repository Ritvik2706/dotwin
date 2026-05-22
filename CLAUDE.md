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
| `zebar/ritvik-bar/` | `C:\Users\Ritvik\.glzr\zebar\ritvik-bar\` |
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

## Gitignored intentionally

- `*.log`, `*.bak` — runtime noise from Windows apps
- `zebar/ritvik-bar/_app/` — compiled SvelteKit build artifacts managed by Zebar, not hand-edited
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
