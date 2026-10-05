# Bluetooth status/toggle for the Zebar bar (Zebar has no Bluetooth provider).
#   bluetooth.ps1 status  -> {"available":true,"on":true,"connected":["WH-1000XM4"]}
#   bluetooth.ps1 toggle  -> flips the radio on/off, then prints status
param([string]$Action = 'status')
$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.Runtime.WindowsRuntime
$asTaskGeneric = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object {
    $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and
    $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncOperation`1'
})[0]
function Await($op, [Type]$type) {
    $task = $asTaskGeneric.MakeGenericMethod($type).Invoke($null, @($op))
    $task.Wait(-1) | Out-Null
    $task.Result
}

[Windows.Devices.Radios.Radio, Windows.System.Devices, ContentType = WindowsRuntime] | Out-Null
[Windows.Devices.Radios.RadioAccessStatus, Windows.System.Devices, ContentType = WindowsRuntime] | Out-Null
[Windows.Devices.Enumeration.DeviceInformation, Windows.Devices.Enumeration, ContentType = WindowsRuntime] | Out-Null
[Windows.Devices.Enumeration.DeviceInformationCollection, Windows.Devices.Enumeration, ContentType = WindowsRuntime] | Out-Null
[Windows.Devices.Bluetooth.BluetoothDevice, Windows.Devices.Bluetooth, ContentType = WindowsRuntime] | Out-Null
[Windows.Devices.Bluetooth.BluetoothLEDevice, Windows.Devices.Bluetooth, ContentType = WindowsRuntime] | Out-Null

$radios = Await ([Windows.Devices.Radios.Radio]::GetRadiosAsync()) ([System.Collections.Generic.IReadOnlyList[Windows.Devices.Radios.Radio]])
$radio = $radios | Where-Object { $_.Kind -eq 'Bluetooth' } | Select-Object -First 1

if ($Action -eq 'toggle' -and $radio) {
    Await ([Windows.Devices.Radios.Radio]::RequestAccessAsync()) ([Windows.Devices.Radios.RadioAccessStatus]) | Out-Null
    $target = if ($radio.State -eq 'On') { 'Off' } else { 'On' }
    Await ($radio.SetStateAsync($target)) ([Windows.Devices.Radios.RadioAccessStatus]) | Out-Null
}

$names = @()
if ($radio -and $radio.State -eq 'On') {
    $selectors = @(
        [Windows.Devices.Bluetooth.BluetoothDevice]::GetDeviceSelectorFromConnectionStatus('Connected'),
        [Windows.Devices.Bluetooth.BluetoothLEDevice]::GetDeviceSelectorFromConnectionStatus('Connected')
    )
    foreach ($selector in $selectors) {
        $devices = Await ([Windows.Devices.Enumeration.DeviceInformation]::FindAllAsync($selector)) ([Windows.Devices.Enumeration.DeviceInformationCollection])
        $names += $devices | ForEach-Object { $_.Name }
    }
}

[pscustomobject]@{
    available = [bool]$radio
    on        = [bool]($radio -and $radio.State -eq 'On')
    connected = @($names | Where-Object { $_ } | Select-Object -Unique)
} | ConvertTo-Json -Compress
