# Created by Collin Laney
# (c) Copyright 2023 ColDog Studios - All Rights Reserved

function ColDogLocker {

    <#
        .SYNOPSIS
            Locks and unlocks a folder with a password created by the user.
        .DESCRIPTION
            The `ColDogLocker` cmdlet allows users to create a folder that is password protected and encrypted.
        .LINK
            Standalone Version: https://coldogstudios.github.io/projects/coldog-locker/
            ColDog-Locker GitHub: https://github.com/ColDogStudios/Coldog-Locker/
            PowerDog GitHub: https://github.com/ColDogStudios/PowerDog/
    #>

    Write-Host "ColDog Locker"
}

function FunctionName {
    param (
        [parameter(mandatory=$true, position=0)]
        [string] $Name,
        [parameter(mandatory=$true, position=1)]
        [string] $Path
    )
    
}