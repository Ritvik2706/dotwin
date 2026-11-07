# Sets the default audio device (all roles: console, multimedia, communications).
# Usage: audiodevice.ps1 set <endpoint id>   e.g. {0.0.0.00000000}.{guid}
# Run by the bar's volume picker; Zebar's audio provider lists devices but
# can't change the default. Uses the undocumented IPolicyConfig COM interface,
# the same one the Windows sound settings use.
param(
    [Parameter(Mandatory)][ValidateSet('set')][string]$Action,
    [Parameter(Mandatory)][string]$Id
)

$ErrorActionPreference = 'Stop'

Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

// Only SetDefaultEndpoint is called; the other slots just keep the vtable order.
[ComImport, Guid("f8679f50-850a-41cf-9c72-430f290290c8"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
interface IPolicyConfig {
    int GetMixFormat(); int GetDeviceFormat(); int ResetDeviceFormat(); int SetDeviceFormat();
    int GetProcessingPeriod(); int SetProcessingPeriod(); int GetShareMode(); int SetShareMode();
    int GetPropertyValue(); int SetPropertyValue();
    [PreserveSig] int SetDefaultEndpoint([MarshalAs(UnmanagedType.LPWStr)] string id, int role);
    int SetEndpointVisibility();
}

[ComImport, Guid("870af99c-171d-4f9e-af0d-e63df40c2bc9")]
class PolicyConfigClient {}

public static class AudioDefault {
    public static int Set(string id) {
        var config = (IPolicyConfig)new PolicyConfigClient();
        for (int role = 0; role < 3; role++) {
            int hr = config.SetDefaultEndpoint(id, role);
            if (hr != 0) return hr;
        }
        return 0;
    }
}
"@

$hr = [AudioDefault]::Set($Id)
if ($hr -ne 0) {
    Write-Error ('SetDefaultEndpoint failed: 0x{0:X8}' -f $hr)
    exit 1
}
