# Frees RAM before a game. Run it by hand first, not from the game-detection path:
# shutting down WSL closes every WSL terminal, so it asks before doing that.
# It refuses to run while anything in anticheat-games.txt is open, so it never
# touches a game or its anti-cheat. Discord stays open; its idle memory is trimmed.
#   powershell -ExecutionPolicy Bypass -File pre-game.ps1 [-DryRun]
param([switch]$DryRun)

# Launchers that sit in the background and aren't needed for a Battle.net game.
$Launchers = 'EpicGamesLauncher', 'EADesktop', 'EABackgroundService', 'RiotClientServices',
             'RiotClientUx', 'steam', 'RobloxPlayerBeta'
# Never offered for closing. Everything else with a window at or above $HeavyMB is.
$Keep = 'Discord', 'explorer', 'Battle.net', 'Agent', 'wezterm-gui', 'powershell', 'WindowsTerminal',
        'zebar', 'glazewm', 'NVIDIA Overlay', 'NVIDIA App', 'voicemeeter*'
$HeavyMB = 200
# The game needs about 6 GB of this, plus room for Windows.
$WantFreeMB = 8000

Add-Type -Namespace PreGame -Name Psapi -MemberDefinition '[DllImport("psapi.dll", SetLastError=true)] public static extern bool EmptyWorkingSet(System.IntPtr hProcess);'

function Get-FreeMB { [int]((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1KB) }
function Test-Keep([string]$Name) { foreach ($k in $Keep) { if ($Name -like $k) { return $true } }; $false }

$games = @(Get-Content (Join-Path $PSScriptRoot 'anticheat-games.txt') |
    ForEach-Object { ($_ -replace '(^|\s+)#.*$', '').Trim() } |
    Where-Object { $_ } |
    ForEach-Object { [IO.Path]::GetFileNameWithoutExtension($_) })
$running = @(Get-Process -Name $games -ErrorAction SilentlyContinue)
if ($running) {
    Write-Host "A game is running ($($running[0].Name)). Close it first; nothing was changed."
    if (-not $DryRun) { Read-Host 'Press Enter to close' }
    exit 1
}

$before = Get-FreeMB
Write-Host "Free RAM: $before MB"

foreach ($p in Get-Process -Name $Launchers -ErrorAction SilentlyContinue) {
    $mb = [int]($p.WorkingSet64 / 1MB)
    if ($DryRun) { Write-Host "Would close $($p.Name) ($mb MB)"; continue }
    try {
        Stop-Process -Id $p.Id -Force -ErrorAction Stop
        Write-Host "Closed $($p.Name) ($mb MB)"
    } catch {
        Write-Host "Couldn't close $($p.Name): $($_.Exception.Message)"
    }
}

# Windowed apps only, so system processes are never offered. CloseMainWindow lets
# the app save or prompt, unlike Stop-Process.
$heavy = Get-Process | Where-Object { $_.MainWindowHandle -ne 0 -and -not (Test-Keep $_.Name) } |
    Group-Object Name | ForEach-Object {
        [pscustomobject]@{ Name = $_.Name; Procs = $_.Group
            MB = [int](($_.Group | Measure-Object WorkingSet64 -Sum).Sum / 1MB) }
    } | Where-Object { $_.MB -ge $HeavyMB } | Sort-Object MB -Descending
foreach ($app in $heavy) {
    if ($DryRun) { Write-Host "Would ask to close $($app.Name) ($($app.MB) MB)"; continue }
    if ((Read-Host "Close $($app.Name) ($($app.MB) MB)? [y/N]") -match '^y') {
        foreach ($p in $app.Procs) { [void]$p.CloseMainWindow() }
    }
}

$wsl = Get-Process -Name 'vmmemWSL' -ErrorAction SilentlyContinue
if ($wsl) {
    $mb = [int]($wsl.WorkingSet64 / 1MB)
    if ($DryRun) {
        Write-Host "Would ask to shut down WSL ($mb MB)"
    } else {
        Write-Host "WSL is using $mb MB. Shutting it down closes every WSL terminal and anything running in them."
        if ((Read-Host 'Shut down WSL? [y/N]') -match '^y') {
            wsl.exe --shutdown
            Write-Host 'WSL shut down.'
        } else {
            Write-Host 'WSL left running.'
        }
    }
} else {
    Write-Host 'WSL is not running.'
}

# Releases idle memory from whatever is left. Apps keep running and page back in
# what they need, so Discord may hitch briefly the first time it's used.
$trimmed = 0
$canTrim = 0
foreach ($p in Get-Process) {
    if ($p.Id -eq $PID) { continue }
    try {
        $h = $p.Handle   # throws for processes this user can't open, such as system ones
        $canTrim++
        if (-not $DryRun -and [PreGame.Psapi]::EmptyWorkingSet($h)) { $trimmed++ }
    } catch { }
}
if ($DryRun) { Write-Host "Would trim $canTrim processes" } else { Write-Host "Trimmed $trimmed processes" }

if (-not $DryRun) {
    Start-Sleep -Seconds 2
    $after = Get-FreeMB
    Write-Host "Free RAM: $after MB ($($after - $before) MB freed)"
    if ($after -lt $WantFreeMB) {
        Write-Host "Under $WantFreeMB MB free: expect stutter unless you close something else."
    }
    Read-Host 'Press Enter to close'
}
