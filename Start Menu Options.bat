@echo off
setlocal

:menu
echo Select the option of your preferences:
echo 1. Shut down the PC
echo 2. Reboot the PC
echo 3. Suspend the PC
set /p opcion="Enter the number of your election: "

if "%opcion%"=="1" (
    shutdown /s /f /t 0
) else if "%opcion%"=="2" (
    shutdown /r /f /t 0
) else if "%opcion%"=="3" (
    rundll32.exe powrprof.dll,SetSuspendState 0,1,0
) else (
    echo Non-valid option. Please, enter the number 1, 2, or 3.
    goto menu
)

endlocal
