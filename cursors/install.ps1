# Installs the Reliquary cursors for this user, or puts the previous ones back.
#   powershell -ExecutionPolicy Bypass -File install.ps1 [-Restore]
# Saves the current cursors first, so -Restore is exact. No admin needed.
param([switch]$Restore)
$ErrorActionPreference = 'Stop'

$key    = 'HKCU:\Control Panel\Cursors'
$dir    = Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Cursors\Reliquary'
$backup = Join-Path $dir 'previous-cursors.json'
$roles = [ordered]@{
    Arrow = 'arrow.cur'; Help = 'help.cur'; AppStarting = 'working.ani'; Wait = 'busy.ani'
    Crosshair = 'cross.cur'; IBeam = 'text.cur'; NWPen = 'pen.cur'; No = 'no.cur'
    SizeNS = 'ns.cur'; SizeWE = 'ew.cur'; SizeNWSE = 'nwse.cur'; SizeNESW = 'nesw.cur'
    SizeAll = 'move.cur'; UpArrow = 'up.cur'; Hand = 'link.cur'; Pin = 'pin.cur'; Person = 'person.cur'
}

Add-Type -Namespace Reliquary -Name Native -MemberDefinition '[DllImport("user32.dll", SetLastError=true)] public static extern bool SystemParametersInfo(uint action, uint param, System.IntPtr value, uint flags);'
function Update-Cursors {
    # SPI_SETCURSORS, written to the profile and announced to running apps.
    $null = [Reliquary.Native]::SystemParametersInfo(0x57, 0, [IntPtr]::Zero, 3)
}

if ($Restore) {
    if (-not (Test-Path $backup)) { throw "Nothing to restore: $backup is missing." }
    $saved = Get-Content $backup -Raw | ConvertFrom-Json
    foreach ($p in $saved.PSObject.Properties) { Set-ItemProperty $key -Name $p.Name -Value $p.Value }
    Update-Cursors
    'Previous cursors restored.'
    return
}

$null = New-Item -ItemType Directory -Force $dir
Copy-Item (Join-Path $PSScriptRoot 'reliquary\*') $dir -Force

# Only the first install saves: a second one must not save Reliquary as "previous".
if (-not (Test-Path $backup)) {
    $current = Get-ItemProperty $key
    $saved = [ordered]@{ '(default)' = $current.'(default)'; 'Scheme Source' = $current.'Scheme Source' }
    foreach ($role in $roles.Keys) { $saved[$role] = $current.$role }
    $saved | ConvertTo-Json | Set-Content $backup -Encoding UTF8
}

foreach ($role in $roles.Keys) { Set-ItemProperty $key -Name $role -Value (Join-Path $dir $roles[$role]) }
Set-ItemProperty $key -Name '(default)' -Value 'Reliquary'
Set-ItemProperty $key -Name 'Scheme Source' -Value 1 -Type DWord
$list = ($roles.Values | ForEach-Object { Join-Path $dir $_ }) -join ','
$null = New-Item -Force -Path "$key\Schemes" -ErrorAction SilentlyContinue
Set-ItemProperty "$key\Schemes" -Name 'Reliquary' -Value $list
Update-Cursors
'Reliquary cursors installed.'
