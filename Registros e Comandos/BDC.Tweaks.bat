:: DISABLE DEP ON GGOS
:: https://gitlab.com/ggos/support

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || ( echo This script must be Run as Administrator. && pause && exit /b 1 )

:: DISABLE DEP
bcdedit /set nx AlwaysOff
bcdedit /set bootmenupolicy legacy
bcdedit /set tscsyncpolicy enhanced
bcdedit /set disabledynamictick Yes
bcdedit /set hypervisorlaunchtype off
shutdown.exe -r -t 1
exit
