# PowerDog
PowerShell, but with extra ColDog Studios tools

## How to Enable on Startup
In order to enable all of the ColDog Studios tools when you startup PowerShell, you must complete the following:
*All Commands are run in PowerShell*

### Set the ExecutionPolicy
```PowerShell
Set-ExecutionPolicy RemoteSigned
```

You may receive an error from entering the above command, but there are two solutions:

1. Run PowerShell as an Administrator
2. Set the scope to `CurrentUser`

```PowerShell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Create the `$PROFILE` script
This can be done by entering the following PowerShell command:

```PowerShell
New-Item –Type File –Force $PROFILE

    Directory: C:\Users\USERNAME\Documents\PowerShell

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---           3/14/2023  7:25 PM              0 Microsoft.PowerShell_profile.ps1
```

### Add the PowerDog Script
Navigate to `USERNAME\Documents\WindowsPowerShell\` if you are using Windows PowerShell 5.1 or earlier

***OR***
Navigate to `USERNAME\Documents\PowerShell\` if you are using PowerShell 6 or newer

Copy `PowerDog.ps1` into the root of the directory