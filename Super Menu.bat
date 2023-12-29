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
echo 9. Ping Tool
echo 10. Kill a Process
echo 11. Change IP Address
echo 12. File Explorer
echo 13. Calculator
echo 0. Turn Off Computer
echo C. Cancel Shutdown
echo.
set /p choice="Enter your Choice: "

if "%choice%"=="1" (
echo You have 30 seconds before the computer will reset.
shutdown /r /t 30
pause
goto menu
)
if "%choice%"=="2" (
echo You have 30 seconds before the UEFI Firmware Settings will be entered.
shutdown /r /fw /t 30
pause
goto menu
)
if "%choice%"=="3" (
echo You have 30 seconds before you will be signed out.
shutdown /l /t 30
pause
goto menu
)
if "%choice%"=="4" rundll32.exe powrprof.dll,SetSuspendState 0,1,0

if "%choice%"=="5" (
echo Opening Task Manager...
start taskmgr
pause
goto menu
)

if "%choice%"=="6" (
echo Opening Network and Internet Settings...
start ms-settings:network-wifi
goto menu
)

if "%choice%"=="7" (
echo Opening Volume Mixer...
start sndvol.exe
goto menu
)

if "%choice%"=="8" (
echo Opening Control Panel...
start control panel
goto menu
)

if "%choice%"=="9" (
set /p website="Enter the website you want to ping: "
echo Attempting to Ping %website%...
ping "%website%"
pause
goto menu
)

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
	goto menu
)

if "%choice%"=="11" (
    echo Are you sure you want to change your IP address? (yes/no)
    set /p UserInput=
    if /i "%UserInput%"=="yes" (
        echo Changing IP address...
        netsh interface ip set address name="Ethernet" static 192.168.42.42 255.255.255.0 192.168.42.1
        netsh interface ip set dnsservers "Ethernet" static 8.8.8.8 validate=no
        netsh interface ipv4 add dnsserver "Ethernet" address=8.8.4.4 index=2 validate=no
        echo IP address changed successfully.
        Pause
		goto menu
    ) else (
        echo Returning without changing IP address.
        Pause
		goto menu
    )
)

if "%choice%"=="12" (
echo Opening File Explorer...
start explorer
pause
goto menu
)

if "%choice%"=="13" (
echo Opening Calculator...
start calc
pause
goto menu
)

if "%choice%"=="0" (
echo You have 30 seconds before the computer will turn off.
shutdown /s /t 30
pause
goto menu
)
if /I "%choice%"=="C" (
echo Cancelling scheduled shutdown...
shutdown /a
Pause
goto menu
)
goto menu
