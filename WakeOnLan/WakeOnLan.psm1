function Send-WakeOnLan {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, Position = 0)]
        [ValidatePattern('^([0-9A-Fa-f]{2}[:\-]?){6}$')]
        [string]$MAC,

        [Parameter(Mandatory, Position = 1)]
        [string]$BroadcastIP
    )

    $macClean = $MAC -replace '[:-]', ''
    if ($macClean.Length -ne 12) {
        throw "Invalid MAC address format."
    }

    $macBytes = for ($i = 0; $i -lt 12; $i += 2) {
        [Convert]::ToByte($macClean.Substring($i, 2), 16)
    }

    $packet = ([byte[]](,0xFF * 6)) + ($macBytes * 16)

    $udpClient = New-Object System.Net.Sockets.UdpClient
    $udpClient.Connect($BroadcastIP, 9)
    [void]$udpClient.Send($packet, $packet.Length)
    $udpClient.Close()

    Write-Verbose "Magic packet sent to $MAC via $BroadcastIP"
}
