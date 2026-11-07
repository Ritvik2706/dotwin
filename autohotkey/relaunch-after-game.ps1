# Started (hidden) by CapsEscSwap.ahk just before it quits for a game. Stops
# GlazeWM and Zebar, waits until the game and everything in anticheat-games.txt
# has exited, then starts GlazeWM (which starts Zebar) and the script again.
# While a game runs it's blocked in Wait-Process, which waits on the process
# handles and uses no CPU.
#   powershell -File relaunch-after-game.ps1 -Script <path to CapsEscSwap.ahk> -Game <process name>
param([Parameter(Mandatory)][string]$Script, [Parameter(Mandatory)][string]$Game)

$GlazeExe = 'C:\Program Files\glzr.io\GlazeWM\glazewm.exe'

& (Join-Path $PSScriptRoot 'stop-glazewm.ps1')

$names = @(Get-Content (Join-Path $PSScriptRoot 'anticheat-games.txt') |
    ForEach-Object { ($_ -replace '(^|\s+)#.*$', '').Trim() } |
    Where-Object { $_ } |
    ForEach-Object { [IO.Path]::GetFileNameWithoutExtension($_) }) +
    [IO.Path]::GetFileNameWithoutExtension($Game)

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

# Two of these can be waiting if the script was started by hand mid-game.
if (-not (Get-Process glazewm -ErrorAction SilentlyContinue)) {
    Start-Process -FilePath $GlazeExe
}
Start-Process -FilePath $Script
