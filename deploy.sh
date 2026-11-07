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
ZEBAR_PACK_DIR="$WIN_ROAMING/zebar/downloads/ritvik.glazewm-bar@1.0.0"
SIOYEK_DIR="$WIN_LOCAL/Programs/sioyek"
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

# Build the Zebar bar (Vite + React) into zebar/glazewm-bar/dist/.
# Installs dependencies first if they're missing or package-lock.json changed.
build_zebar_bar() {
    local dir="$REPO_DIR/zebar/glazewm-bar"
    if ! command -v npm >/dev/null; then
        echo "    npm not found in WSL"
        return 1
    fi
    if [[ ! -d "$dir/node_modules" || "$dir/package-lock.json" -nt "$dir/node_modules/.package-lock.json" ]]; then
        (cd "$dir" && npm ci --no-audit --no-fund --loglevel=error) || return 1
    fi
    (cd "$dir" && npm run --silent build >/dev/null) || return 1
}

# Install the bar into its Zebar pack folder: zpack.json, scripts/, then the build.
# A failed build leaves the deployed UI as it was.
deploy_zebar_bar() {
    local src="$REPO_DIR/zebar/glazewm-bar" dest="$ZEBAR_PACK_DIR"
    mkdir -p "$dest/scripts" "$dest/assets"
    cp "$src/zpack.json" "$dest/zpack.json"
    rm -f "$dest"/*.ps1   # scripts live in scripts/; drop copies from the old flat layout
    cp "$src"/scripts/*.ps1 "$dest/scripts/"

    if ! build_zebar_bar; then
        echo "    SKIPPED bar UI — build failed (run: cd zebar/glazewm-bar && npm run build)"
        return 0
    fi
    # index.html names the hashed asset files, so copy it last and only then
    # remove stale assets; the bar never points at files that aren't there.
    cp "$src"/dist/assets/* "$dest/assets/"
    find "$src/dist" -maxdepth 1 -type f ! -name index.html -exec cp {} "$dest/" \;
    cp "$src/dist/index.html" "$dest/index.html"
    local file
    for file in "$dest"/assets/*; do
        [[ -e "$src/dist/assets/$(basename "$file")" ]] || rm -f "$file"
    done
}

deploy() {
    echo "=== Deploying configs to Windows ==="

    echo "  autohotkey"
    rm -rf "$WIN_USER/Documents/AutoHotkey/modules"   # so deleted modules don't linger
    copy_dir "$REPO_DIR/autohotkey" "$WIN_USER/Documents/AutoHotkey"

    echo "  glazewm"
    mkdir -p "$WIN_USER/.glzr/glazewm"
    cp "$REPO_DIR/glazewm/config.yaml" "$WIN_USER/.glzr/glazewm/config.yaml"

    echo "  wezterm"
    cp "$REPO_DIR/wezterm.lua" "$WIN_USER/.wezterm.lua"

    echo "  wslconfig"
    cp "$REPO_DIR/.wslconfig" "$WIN_USER/.wslconfig"

    echo "  zebar"
    cp "$REPO_DIR/zebar/settings.json" "$WIN_USER/.glzr/zebar/settings.json"
    deploy_zebar_bar

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

    echo "  sioyek"
    copy_dir "$REPO_DIR/sioyek" "$SIOYEK_DIR"

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
    # The bar's UI is built from source here, so only its hand-edited files come back.
    cp "$ZEBAR_PACK_DIR/zpack.json" "$REPO_DIR/zebar/glazewm-bar/zpack.json"
    cp "$ZEBAR_PACK_DIR"/scripts/*.ps1 "$REPO_DIR/zebar/glazewm-bar/scripts/"

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
    copy_dir "$SIOYEK_DIR" "$REPO_DIR/sioyek"

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
