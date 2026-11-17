# Started (hidden) by CapsEscSwap.ahk just before it quits for a game. Stops
# GlazeWM, Zebar and Flow Launcher, waits until the game and everything in
# anticheat-games.txt has exited, then starts GlazeWM (which starts Zebar), Flow
# Launcher (if it was running) and the script again.
# While a game runs it's blocked in Wait-Process, which waits on the process
# handles and uses no CPU.
# Call of Duty also gets its own desktop mode for as long as it runs: see
# $CodDisplay.
#   powershell -File relaunch-after-game.ps1 -Script <path to CapsEscSwap.ahk> -Game <process name>
param([Parameter(Mandatory)][string]$Script, [Parameter(Mandatory)][string]$Game)

$GlazeExe = 'C:\Program Files\glzr.io\GlazeWM\glazewm.exe'
# Squirrel's stub, which survives Flow updates (the real exe is in app-<version>\).
$FlowExe = Join-Path $env:LOCALAPPDATA 'FlowLauncher\Flow.Launcher.exe'

& (Join-Path $PSScriptRoot 'stop-glazewm.ps1')

$flowWasRunning = [bool](Get-Process Flow.Launcher -ErrorAction SilentlyContinue)
Stop-Process -Name Flow.Launcher -Force -ErrorAction SilentlyContinue

$names = @(Get-Content (Join-Path $PSScriptRoot 'anticheat-games.txt') |
    ForEach-Object { ($_ -replace '(^|\s+)#.*$', '').Trim() } |
    Where-Object { $_ } |
    ForEach-Object { [IO.Path]::GetFileNameWithoutExtension($_) }) +
    [IO.Path]::GetFileNameWithoutExtension($Game)

# Call of Duty gets these for as long as it runs. It plays exclusive fullscreen
# at its own 1728x1080 (stretched, by NVIDIA's scaling), so the desktop's mode
# is left alone: changing it gained no frame rate, since the game sets its own.
# Vibrance is NVIDIA Control Panel's percentage (50 is normal); too much clips
# saturated colours, which hides detail in dark areas. Gamma is the same panel's
# gamma (1 is normal): more makes dark areas easier to see into, and too much
# washes the picture out. Shadows brightens only the dark half of the picture,
# most near black (1 is none), so it shows more in dark corners than gamma does
# without washing out the rest. Contrast steepens the midtones (1 is none),
# which makes shapes stand out from what's behind them; it darkens shadows a
# little. Gamma 1.2 with the brightness raised to 100 looked bright and washed
# out, hence these. Brightness is the monitor's own, raised to this while the
# game runs if it was lower (0 leaves it alone). None of these cost frame rate:
# they apply after the game has drawn its frame. The crosshair is a dot at the
# centre of the screen with a black outline, on screen only while a game has the
# focus, and shown and hidden from the tray icon's menu: Dot is its diameter in
# the monitor's pixels (0 for none), DotOutline the outline's width, and
# DotShown whether it starts switched on (the tray icon switches it). While it's
# off it has no window and no event hook. It stays round in the stretched mode.
$CodDisplay = @{ Vibrance = 65; Gamma = 1; Shadows = 1; Contrast = 1.2; Brightness = 0; Dot = 4.5; DotOutline = 1.5; DotColor = '#00FF00'; DotShown = $false }
$isCod = $Game -match '^(cod|ModernWarfare)'
if ($isCod) {
    . (Join-Path $PSScriptRoot 'game-display.ps1')
    [void][GameDisplay]::SetVibrance($CodDisplay.Vibrance)
    [void][GameDisplay]::SetGamma($CodDisplay.Gamma, $CodDisplay.Shadows, $CodDisplay.Contrast)
    if ($CodDisplay.Brightness) { [void][GameDisplay]::RaiseBrightness($CodDisplay.Brightness) }
    [GameDisplay]::StartTray($CodDisplay.Dot, $CodDisplay.DotOutline, $CodDisplay.DotColor, $CodDisplay.DotShown, [string[]]$names)
}

# Not cod.exe's windowless shader preload (+ogu_mode), which Battle.net starts on
# its own and can run for minutes: see IsShaderPreload in AntiCheatGames.ahk.
function Get-Games {
    $preload = @(Get-CimInstance Win32_Process -Filter "Name='cod.exe'" |
        Where-Object { $_.CommandLine -match '\+ogu_mode' } |
        ForEach-Object { $_.ProcessId })
    Get-Process -Name $names -ErrorAction SilentlyContinue |
        Where-Object { $preload -notcontains $_.Id }
}

do {
    # If the anti-cheat denies a handle, Wait-Process errors at once and the
    # loop falls back to checking every 10 s.
    Get-Games | Wait-Process -ErrorAction SilentlyContinue
    # Give a launcher time to hand over to the real game process.
    Start-Sleep -Seconds 10
} while (Get-Games)

if ($isCod) {
    [GameDisplay]::StopTray()
    [GameDisplay]::RestoreVibrance()
    [GameDisplay]::RestoreBrightness()
    [GameDisplay]::RestoreGamma()
}

# Two of these can be waiting if the script was started by hand mid-game.
if (-not (Get-Process glazewm -ErrorAction SilentlyContinue)) {
    Start-Process -FilePath $GlazeExe
}
if ($flowWasRunning -and -not (Get-Process Flow.Launcher -ErrorAction SilentlyContinue)) {
    Start-Process -FilePath $FlowExe
}
Start-Process -FilePath $Script
