# Prints a running process's executable icon as base64 PNG (empty if unknown).
# Used by the bar's focused-app indicator; results are cached by the bar, so
# this runs once per app.
#   appicon.ps1 <processName>
param([string]$Name)
$ErrorActionPreference = 'Stop'

$proc = Get-Process -Name $Name -ErrorAction SilentlyContinue |
    Where-Object { $_.Path } | Select-Object -First 1
if (-not $proc) { return }

Add-Type -AssemblyName System.Drawing
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon($proc.Path)
$stream = New-Object IO.MemoryStream
$icon.ToBitmap().Save($stream, [System.Drawing.Imaging.ImageFormat]::Png)
[Convert]::ToBase64String($stream.ToArray())
