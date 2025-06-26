@{
    RootModule        = 'WakeOnLan.psm1'
    ModuleVersion     = '1.0.0'
    GUID              = 'd2f14b21-f1b7-4a5d-83c1-99f714e6c000'
    Author            = 'Collin Laney'
    Description       = 'A simple PowerShell module to send Wake-on-LAN magic packets.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Send-WakeOnLan')
    CmdletsToExport   = @()
    AliasesToExport   = @()
    PrivateData       = @{
        PSData = @{
            Tags = @('WOL', 'Networking', 'WakeOnLan')
        }
    }
}
