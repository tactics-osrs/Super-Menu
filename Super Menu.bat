TITLE Super Menu
@echo off
:menu
cls
echo.
date /t
time /t
echo.
echo 1. Reset Computer
echo 2. Enter UEFI Firmware Settings
echo 3. Sign Out
echo 4. Sleep
echo 5. Open Task Manager
echo 6. Network and Internet Settings
echo 7. Volume Mixer
echo 8. Open Control Panel
echo 9. Ping Google
echo 10. Kill a Process
echo 0. Turn Off Computer
echo C. Cancel Shutdown
echo.
set /p choice="Enter your Choice: "

if "%choice%"=="1" (
echo You have 30 seconds before the computer will reset.
shutdown /r /t 30
pause
)
if "%choice%"=="2" (
echo You have 30 seconds before the UEFI Firmware Settings will be entered.
shutdown /r /fw /t 30
pause
)
if "%choice%"=="3" (
echo You have 30 seconds before you will be signed out.
shutdown /l /t 30
pause
)
if "%choice%"=="4" rundll32.exe powrprof.dll,SetSuspendState 0,1,0

if "%choice%"=="5" start taskmgr

if "%choice%"=="6" start ms-settings:network-wifi

if "%choice%"=="7" start sndvol.exe

if "%choice%"=="8" start control panel

if "%choice%"=="9" ping www.google.com

if "%choice%"=="10" (
    echo Displaying all running tasks...
    tasklist
    set /p process="Enter the process name: "
    setlocal enabledelayedexpansion
    for /f "tokens=*" %%a in ('taskkill /IM "%process%" /F 2^>^&1') do (
        set "msg=%%a"
        echo !msg!
        if "!msg!"=="SUCCESS: The process \"%process%\" with PID * has been terminated." (
            echo The process %process% was successfully terminated.
            goto end_taskkill
        )
    )
    :end_taskkill
    endlocal
    Pause
)

if "%choice%"=="0" (
echo You have 30 seconds before the computer will turn off.
shutdown /s /t 30
pause
)
if /I "%choice%"=="C" (
echo Cancelling scheduled shutdown...
shutdown /a
Pause
)
goto menu
