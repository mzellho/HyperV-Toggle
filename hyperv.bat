@ECHO OFF

FOR /F "tokens=2" %%a IN ('BCDEDIT /enum ^| FIND /i "hypervisorlaunchtype"') DO SET CURRENT_LAUNCHTYPE=%%a
ECHO Welcome! Hypervisor Launch Type is set to [%CURRENT_LAUNCHTYPE%] at the moment.

ECHO.
CHOICE /C DAVO /M "Do you want to set up Hypervisor Launch Type for [D]ocker/[A]uto or [V]MWare/[O]ff?" /N
IF "%ERRORLEVEL%" == "1" SET LAUNCHTYPE=Auto
IF "%ERRORLEVEL%" == "2" SET LAUNCHTYPE=Auto
IF "%ERRORLEVEL%" == "3" SET LAUNCHTYPE=Off
IF "%ERRORLEVEL%" == "4" SET LAUNCHTYPE=Off
IF "%CURRENT_LAUNCHTYPE%" == "%LAUNCHTYPE%" GOTO unchanged

ECHO.
ECHO Setting Hypervisor Launch Type to [%LAUNCHTYPE%]
BCDEDIT /set hypervisorlaunchtype %LAUNCHTYPE%

ECHO.
ECHO Note: Changed Hypervisor Launch Type Settings only take effect after a restart!
CHOICE /C YN /M "Do you want to reboot the computer in order to activate the new Hypervisor Launch Type setting [Y/N]?" /N
IF "%ERRORLEVEL%" == "1" GOTO reboot
IF "%ERRORLEVEL%" == "2" GOTO end

:reboot
SHUTDOWN /r /t 0
GOTO end

:unchanged
ECHO Hypervisor Launch Type will remain unchanged [%LAUNCHTYPE%], no need to reboot.
GOTO end

:end
ECHO.
ECHO Have a nice day!

SET LAUNCHTYPE=
SET CURRENT_LAUNCHTYPE=
