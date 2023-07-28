# Created by Collin Laney
# (c) Copyright 2023 ColDog Studios - All Rights Reserved

function New-ColDogLocker {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, position=0)]
        [string]$Name,
        [Parameter(Mandatory=$false, position=1)]
        [string]$Path
    )

    try {
        # Create the folder if it does not exist
        $FolderPath = Join-Path "$Path" "$Name"
        if (-not(Test-Path "$FolderPath" -PathType Container)) { New-Item -ItemType Directory -Path "$FolderPath" }

        # Secure the folder
        $Acl = Get-Acl "$FolderPath"
        $Ar = New-Object System.Security.AccessControl.FileSystemAccessRule($env:USERNAME,"FullControl","Allow")
        $Acl.SetAccessRule($Ar)
        Set-Acl "$FolderPath" $Acl
    }
    catch {
        # Handle any errors that occured
        Write-Host "There was an error creating $Name. Ensure you have sufficient permissions. Error: $($_.Exception.Message)"
        exit 1
    }
    
    <#
        .SYNOPSIS
            Locks and unlocks a folder with a password created by the user.
        .DESCRIPTION
            The `New-ColDogLocker` cmdlet allows users to create a folder that is password protected and encrypted. It is a lite version of the standalone version, and is less secure.
            It works by setting the Access Control List (ACL) to only the current user. However, Administrators can have control of the folder and its contents.
            This Lite version of ColDog Locker is perfect for relatively unimportant files, and keeps unexperienced prying eyes away.
        .LINK
            Standalone Version: https://coldogstudios.github.io/projects/coldog-locker/
            ColDog Locker GitHub: https://github.com/ColDogStudios/ColDog-Locker/
            PowerDog GitHub: https://github.com/ColDogStudios/PowerDog/
    #>
}
