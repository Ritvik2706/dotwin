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
| `zebar/glazewm-bar/` (source; deploy builds it and installs `zpack.json`, `scripts/`, `dist/`) | `C:\Users\Ritvik\AppData\Roaming\zebar\downloads\ritvik.glazewm-bar@1.0.0\` |
| `flowlauncher/settings.json` | `C:\Users\Ritvik\AppData\Roaming\FlowLauncher\Settings\Settings.json` |
| `powertoys/settings.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\settings.json` |
| `powertoys/keyboard-manager/default.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\Keyboard Manager\default.json` |
| `powertoys/fancyzones-settings.json` | `C:\Users\Ritvik\AppData\Local\Microsoft\PowerToys\FancyZones\settings.json` |
| `obs-studio/` | `C:\Users\Ritvik\AppData\Roaming\obs-studio\` |
| `sioyek/` | `C:\Users\Ritvik\AppData\Local\Programs\sioyek\` |
| `mpv/` | `C:\Program Files (x86)\mpv\portable_config\` |
| `cursors/` (not deployed: `generate.py` builds `reliquary/`, `install.ps1` installs it, `-Restore` undoes it) | `%LOCALAPPDATA%\Microsoft\Windows\Cursors\Reliquary\` |

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

`zebar/settings.json` starts pack `ritvik.glazewm-bar`, which Zebar loads from its downloads dir (not `.glzr\zebar\`). The bar's full source (React + Vite) lives in `zebar/glazewm-bar/`; **read its `README.md` first** — it maps every widget to its file, lists the PowerShell helpers in `scripts/`, and explains how to add a widget.

- `deploy.sh` builds the bar (`npm ci` if needed, then `npm run build`, in WSL) and installs `zpack.json`, `scripts/*.ps1` and `dist/` into the pack folder. A failed build leaves the deployed UI untouched. `node_modules/` and `dist/` are gitignored.
- `sync` only pulls back `zpack.json` and `scripts/`; the UI is generated, so edit it here.
- Anything the bar runs through Zebar's `shellExec` (the scripts, `nvidia-smi`, `taskbar.ahk`, power commands) needs a `shellCommands` privilege in `zpack.json`; new privileges only take effect after Zebar restarts (Alt+F7).
- Machine-specific paths are in `src/config.js`; colours and sizes in `src/styles/theme.css`.
- Zebar's glazewm provider misses windows opening and closing, so the window list comes from `src/lib/monitorTree.js`, which has its own GlazeWM connection. Zebar also never removes icons of crashed apps; `widgets/systray/useDeadIcons.js` finds them. Everything the bar launches goes through Zebar's shell API, not GlazeWM's `shell-exec`, which Zebar has deprecated for widgets.
- GlazeWM has no automatic layouts, so `src/lib/dwindle.js` does Hyprland's dwindle: on each focus change it sets the tiling direction along the focused window's longer side. It needs Zebar running.
- GlazeWM keeps a window that hides itself on a hidden workspace until its process exits, and its `ignore` is permanent, so it can't clear those. After closing a window on a hidden workspace, the bar checks `windowvisible.ps1` and drops it (`markWindowHidden`) until it takes focus again.
- GlazeWM re-runs window rules when a window's title changes, and an `ignore`d window stays ignored until it's closed. So any `ignore` rule matching `window_title` must exclude everyday apps with `not_regex`, or a browser tab can untile the browser permanently.
- GlazeWM 3.10 can't parse key bindings containing a YAML escape: use names like `alt+oem_pipe`, not `"alt+\\"`.

## Keybindings

They follow `dotnix/niri/conf/binds/`. Alt on Windows is the same physical key as niri's Mod (keyd maps it to Super on Linux). `glazewm/config.yaml` owns window, workspace and monitor keys; `autohotkey/modules/` owns app and system keys. A key bound in both fires twice. `Alt+Shift+/` shows the sheet (`KEY_SHEET` in `modules/Session.ahk`): update it with any key change. Niri features with no Windows equivalent aren't mapped: the scrolling strip, overview, tabbed columns, `Mod+O`. `focus_follows_cursor` stays off because Flow and Ditto close when they lose focus.

## AutoHotkey layout

`autohotkey/CapsEscSwap.ahk` is the one always-running script; it `#Include`s the feature modules in `autohotkey/modules/` (its header lists what each one does) and then starts them. Modules only define state, functions and hotkeys; timers, message handlers and other side effects run from the `Startup` section at the bottom of `CapsEscSwap.ahk`, after all state exists. Every module must end with `#HotIf` reset, since `#HotIf` carries over into the next include. Nothing polls: `modules/WindowEvents.ahk` gets foreground-change (WinEvent hook) and window-created (shell hook) events and feeds game detection and the Sioyek titlebar. Games need no hotkey gating, since the script quits for them (next section); new hotkeys use `#HotIf ShouldRemap()`, which is just the Win+F1 switch. `modules/ErrorLog.ahk` is included first and sends uncaught errors to `errors.log` instead of a dialog; check that file if a hotkey seems dead. Launchers find windows with `FindAppWindow`, not `WinExist`: GlazeWM cloaks windows on other workspaces and AutoHotkey treats cloaked as hidden, so `WinExist` misses them and a second copy opens. `WinActivate` on a cloaked window makes GlazeWM switch to its workspace. `glazewm query` prints JSON (`{"data":true,...}`), so go through `GlazeQuery`, which also times out. The window's process name falls back to the process-list snapshot when anti-cheat denies opening the game's process. Keep it event-driven: no timers that run all the time. `taskbar.ahk` and `brightness.ahk` are short-lived bridges Zebar runs; they find the main script by its window title, so don't rename `CapsEscSwap.ahk`. Games: see the next section. The bar won't launch the `.ahk` bridges while the script's tray icon (tooltip prefix `CapsLock Remap`) is missing, or before the systray provider has reported (`src/lib/ahk.js`); every bridge call must check `isAhkRunning`. OnExit callbacks must not return non-zero (that cancels the exit), so don't use fat arrows around DllCalls there. The bridges must keep `#SingleInstance Off`: with AutoHotkey's default, a run that overlaps the previous one shows an unanswered "replace it?" prompt and never exits, and Zebar's polling piles hundreds of them up. They must also keep their `OnError` exit, or a write to a closed stdout (Zebar quit mid-run) leaves an unanswered error dialog. Check syntax without running anything: `"/mnt/c/Program Files/AutoHotkey/v2/AutoHotkey64.exe" /ErrorStdOut=UTF-8 /validate 'C:\Users\Ritvik\Documents\AutoHotkey\CapsEscSwap.ahk'` (run it from a Windows directory such as `/mnt/c/Users/Ritvik`).

## AutoHotkey: gaming / display behaviour

`autohotkey/autostart.ahk` is for a logon scheduled task (not set up by default): the Startup folder waits behind the Run-key apps, which Windows starts one at a time with up to 30 s each, about 5 minutes in all. `autohotkey/pre-game.ps1` is run by hand before a game (Desktop shortcut) to free RAM: it closes idle launchers, offers to close heavy windowed apps and shut down WSL, and trims the working sets of what's left. It refuses to run while anything in `anticheat-games.txt` is open, so it never touches a game. Don't call it from game detection, since `wsl --shutdown` closes every WSL terminal. Quit GlazeWM only through `autohotkey/stop-glazewm.ps1` (Alt+Shift+E and Alt+F9 run it): plain `wm-exit` and GlazeWM's tray Exit leave windows on hidden workspaces cloaked, so they're invisible and the next GlazeWM won't manage them. The script notes GlazeWM's window handles, stops Zebar, runs `wm-exit` and uncloaks those handles; every CLI call has a timeout, and if GlazeWM can't answer it finds cloaked app windows itself. GlazeWM runs elevated, so it can't be killed from a normal process (`Access is denied`): if it really hangs, it needs `Stop-Process -Name glazewm,glazewm-watcher -Force` from an admin shell. A keybinding command that fails opens a modal "Non-fatal error" dialog, and GlazeWM's whole loop blocks until it's dismissed: nothing tiles, and `glazewm query` hangs. So check for that dialog before assuming GlazeWM is frozen, and don't bind commands that can fail, like `focus --monitor <n>` with one monitor plugged in. The same command through the CLI or the bar's `runCommand` only returns an error, so test commands that way. To rescue a stranded window: `stop-glazewm.ps1 -Handles <hwnd>`. Before updating Zebar, make sure no old `zebar.exe` is left: it keeps port 6124 and the new one shows a 404.

**GlazeWM, Zebar and `CapsEscSwap.ahk` all quit while a game runs, and come back after it.** Nothing is paused or kept running around a game, so there's no state to get stuck, nothing for an anti-cheat to flag, and everything starts fresh at the normal resolution. A game is a process in `autohotkey/anticheat-games.txt` (CoD is listed there; caught when it opens any window, so before the anti-cheat's first scan), or any focused window `IsGameWindow` recognises, unless it's in `notGames` (`modules/AntiCheatGames.ahk`). Battle.net's shader preload (windowless `cod.exe +ogu_mode`) isn't a game: `StartGameWatch` and `relaunch-after-game.ps1` both skip it, and they must agree or they restart each other. `QuitForGame` starts `relaunch-after-game.ps1` hidden and exits at once with `EXIT_FOR_GAME`, which skips the exit-time taskbar restore; it must never wait on anything. The PowerShell script runs `stop-glazewm.ps1`, then waits in `Wait-Process`, and 10 s after the last game exits starts GlazeWM, whose `startup_commands` start Zebar, and then the script. Workspaces aren't kept across that: windows go back through `window_rules`, and the rest land on the focused workspace. So remaps and the brightness knob don't run in a game, and a lone Win tap can open Start. Display changes outside games (`WM_DISPLAYCHANGE`, Explorer restart) restart Zebar only if the primary monitor's work area has lost the strip. The Windows taskbar is normally on auto-hide, with a lone Win tap blocked so Start never opens (`modules/TaskbarHiding.ahk`; it only ever touches Explorer's taskbar windows, never Zebar's own hidden `Shell_TrayWnd`, which receives tray-icon updates). GlazeWM ignores commands while paused (Alt+\), so then the Zebar open-apps island's click calls `taskbar.ahk focus <hwnd>`, which reaches `ActivateLikeTaskbar`: it sends `SC_RESTORE` if the window is minimized, then calls `SwitchToThisWindow` and `WinActivate`. Alt + volume knob sets the external monitor's brightness over DDC/CI (`dxva2.dll` DllCalls in `modules/MonitorBrightness.ahk`; Windows' WMI brightness doesn't support external monitors) and shows a non-activating OSD that is skipped over fullscreen windows. The Zebar brightness widget reads/steps it through `brightness.ahk` → `WM_BRIGHTNESS` (0x8002), like `taskbar.ahk` does for the taskbar. The running AutoHotkey instance doesn't reload on deploy — re-run the script (`#SingleInstance Force` replaces it) after changing it.

## Gitignored intentionally

- `*.log`, `*.bak` — runtime noise from Windows apps
- `mpv/cache/` — mpv watch history and thumbnail cache
- `glazewm/.claude/`, `zebar/.marketplace/` — app-internal dirs that land in those folders on Windows
- `zebar/glazewm-bar/node_modules/`, `zebar/glazewm-bar/dist/` — bar dependencies and build output (deploy rebuilds)
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
