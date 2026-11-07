# Persistent key/value state for the Zebar bar, stored as JSON on disk.
# WebView2 localStorage loses recent writes whenever Zebar exits, so the bar
# keeps anything that must survive restarts (tray order/hidden icons) here.
#   state.ps1 get            -> prints the JSON object ({} if none yet)
#   state.ps1 set <base64>   -> replaces it with the base64-encoded UTF-8 JSON
param([string]$Action = 'get', [string]$Data = '')
$ErrorActionPreference = 'Stop'

$path = Join-Path $env:APPDATA 'zebar\ritvik-bar-state.json'

if ($Action -eq 'set') {
    $json = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($Data))
    $null = $json | ConvertFrom-Json   # refuse to write anything that isn't valid JSON
    $tmp = "$path.tmp"
    [IO.File]::WriteAllText($tmp, $json, (New-Object Text.UTF8Encoding $false))
    Move-Item -Force $tmp $path         # atomic replace, so a crash never leaves half a file
} elseif (Test-Path $path) {
    [IO.File]::ReadAllText($path)
} else {
    '{}'
}
