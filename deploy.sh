#!/usr/bin/env bash
set -euo pipefail

if [[ ! -d /mnt/c/Users ]]; then
    echo "Error: Windows filesystem not mounted at /mnt/c — run this from WSL." >&2
    exit 1
fi

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WIN_USER="/mnt/c/Users/Ritvik"
WIN_ROAMING="$WIN_USER/AppData/Roaming"
WIN_LOCAL="$WIN_USER/AppData/Local"
SIOYEK_DIR="/mnt/c/Program Files/sioyek"
MPV_DIR="/mnt/c/Program Files (x86)/mpv/portable_config"

# Copy contents of src/ into dest/ (creating dest if needed).
# Additional args are names to remove from dest after copying.
copy_dir() {
    local src="$1" dest="$2"; shift 2
    mkdir -p "$dest"
    cp -r "$src/." "$dest/"
    local name
    for name in "$@"; do
        rm -rf "${dest:?}/$name"
    done
}

# Delete files under dest matching the given find predicates.
clean_after_copy() {
    local dest="$1"; shift
    find "$dest" \( "$@" \) -delete 2>/dev/null || true
}

# Attempt a directory copy into a path requiring elevation.
# Prints manual instructions on failure instead of aborting.
try_privileged_copy() {
    local src="$1" dest="$2" label="$3"
    echo "  $label (requires admin)..."
    if cp -r "$src/." "$dest/" 2>/dev/null; then
        echo "    OK"
    else
        echo "    SKIPPED — no write access. Run from an elevated shell:"
        printf '    cp -r "%s/." "%s/"\n' "$src" "$dest"
    fi
}

deploy() {
    echo "=== Deploying configs to Windows ==="

    echo "  autohotkey"
    copy_dir "$REPO_DIR/autohotkey" "$WIN_USER/Documents/AutoHotkey"

    echo "  glazewm"
    mkdir -p "$WIN_USER/.glzr/glazewm"
    cp "$REPO_DIR/glazewm/config.yaml" "$WIN_USER/.glzr/glazewm/config.yaml"

    echo "  wezterm"
    cp "$REPO_DIR/wezterm.lua" "$WIN_USER/.wezterm.lua"

    echo "  wslconfig"
    cp "$REPO_DIR/.wslconfig" "$WIN_USER/.wslconfig"

    echo "  zebar"
    mkdir -p "$WIN_USER/.glzr/zebar/ritvik-bar"
    cp "$REPO_DIR/zebar/settings.json" "$WIN_USER/.glzr/zebar/settings.json"
    copy_dir "$REPO_DIR/zebar/ritvik-bar" "$WIN_USER/.glzr/zebar/ritvik-bar"

    echo "  flowlauncher"
    mkdir -p "$WIN_ROAMING/FlowLauncher/Settings"
    cp "$REPO_DIR/flowlauncher/settings.json" "$WIN_ROAMING/FlowLauncher/Settings/Settings.json"

    echo "  powertoys"
    mkdir -p "$WIN_LOCAL/Microsoft/PowerToys/Keyboard Manager"
    mkdir -p "$WIN_LOCAL/Microsoft/PowerToys/FancyZones"
    cp "$REPO_DIR/powertoys/settings.json"            "$WIN_LOCAL/Microsoft/PowerToys/settings.json"
    cp "$REPO_DIR/powertoys/keyboard-manager/default.json" \
                                                       "$WIN_LOCAL/Microsoft/PowerToys/Keyboard Manager/default.json"
    cp "$REPO_DIR/powertoys/fancyzones-settings.json" "$WIN_LOCAL/Microsoft/PowerToys/FancyZones/settings.json"

    echo "  obs-studio"
    mkdir -p "$WIN_ROAMING/obs-studio/basic/scenes"
    mkdir -p "$WIN_ROAMING/obs-studio/basic/profiles"
    cp "$REPO_DIR/obs-studio/global.ini" "$WIN_ROAMING/obs-studio/global.ini"
    cp "$REPO_DIR/obs-studio/user.ini"   "$WIN_ROAMING/obs-studio/user.ini"
    copy_dir "$REPO_DIR/obs-studio/basic/scenes"   "$WIN_ROAMING/obs-studio/basic/scenes"
    copy_dir "$REPO_DIR/obs-studio/basic/profiles" "$WIN_ROAMING/obs-studio/basic/profiles"

    echo "  sioyek (requires admin)..."
    if cp "$REPO_DIR/sioyek/keys.config"  "$SIOYEK_DIR/keys.config"  2>/dev/null \
    && cp "$REPO_DIR/sioyek/prefs.config" "$SIOYEK_DIR/prefs.config" 2>/dev/null; then
        echo "    OK"
    else
        echo "    SKIPPED — no write access. Run from an elevated shell:"
        printf '    cp "%s/sioyek/keys.config"  "%s/"\n' "$REPO_DIR" "$SIOYEK_DIR"
        printf '    cp "%s/sioyek/prefs.config" "%s/"\n' "$REPO_DIR" "$SIOYEK_DIR"
    fi

    try_privileged_copy "$REPO_DIR/mpv" "$MPV_DIR" "mpv"

    echo "=== Done ==="
}

sync() {
    echo "=== Syncing configs from Windows into repo ==="

    echo "  autohotkey"
    copy_dir "$WIN_USER/Documents/AutoHotkey" "$REPO_DIR/autohotkey"

    echo "  glazewm"
    cp "$WIN_USER/.glzr/glazewm/config.yaml" "$REPO_DIR/glazewm/config.yaml"

    echo "  wezterm"
    cp "$WIN_USER/.wezterm.lua" "$REPO_DIR/wezterm.lua"

    echo "  wslconfig"
    cp "$WIN_USER/.wslconfig" "$REPO_DIR/.wslconfig"

    echo "  zebar"
    cp "$WIN_USER/.glzr/zebar/settings.json" "$REPO_DIR/zebar/settings.json"
    copy_dir "$WIN_USER/.glzr/zebar/ritvik-bar" "$REPO_DIR/zebar/ritvik-bar" "_app"
    clean_after_copy "$REPO_DIR/zebar" -name "*.log"

    echo "  flowlauncher"
    cp "$WIN_ROAMING/FlowLauncher/Settings/Settings.json" "$REPO_DIR/flowlauncher/settings.json"

    echo "  powertoys"
    cp "$WIN_LOCAL/Microsoft/PowerToys/settings.json" \
                                                       "$REPO_DIR/powertoys/settings.json"
    cp "$WIN_LOCAL/Microsoft/PowerToys/Keyboard Manager/default.json" \
                                                       "$REPO_DIR/powertoys/keyboard-manager/default.json"
    cp "$WIN_LOCAL/Microsoft/PowerToys/FancyZones/settings.json" \
                                                       "$REPO_DIR/powertoys/fancyzones-settings.json"

    echo "  obs-studio"
    cp "$WIN_ROAMING/obs-studio/global.ini" "$REPO_DIR/obs-studio/global.ini"
    cp "$WIN_ROAMING/obs-studio/user.ini"   "$REPO_DIR/obs-studio/user.ini"
    copy_dir "$WIN_ROAMING/obs-studio/basic/scenes"   "$REPO_DIR/obs-studio/basic/scenes"
    copy_dir "$WIN_ROAMING/obs-studio/basic/profiles" "$REPO_DIR/obs-studio/basic/profiles"
    clean_after_copy "$REPO_DIR/obs-studio" -name "*.bak" -o -name "*.log"

    echo "  sioyek"
    cp "$SIOYEK_DIR/keys.config"  "$REPO_DIR/sioyek/keys.config"
    cp "$SIOYEK_DIR/prefs.config" "$REPO_DIR/sioyek/prefs.config"

    echo "  mpv"
    copy_dir "$MPV_DIR" "$REPO_DIR/mpv" "cache"
    clean_after_copy "$REPO_DIR/mpv" -name "*.log"

    echo "=== Done ==="
}

case "${1:-}" in
    deploy) deploy ;;
    sync)   sync ;;
    *) printf 'Usage: %s {deploy|sync}\n' "$0" >&2; exit 1 ;;
esac
