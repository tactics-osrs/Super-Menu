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
echo 0. Turn Off Computer
echo.
set /p choice="Enter your Choice: "
if "%choice%"=="1" shutdown /r /t 0
if "%choice%"=="2" shutdown /r /fw /t 0
if "%choice%"=="3" shutdown /l
if "%choice%"=="4" rundll32.exe powrprof.dll,SetSuspendState 0,1,0
if "%choice%"=="5" start taskmgr
if "%choice%"=="6" start ms-settings:network-wifi
if "%choice%"=="7" start sndvol.exe
if "%choice%"=="8" start control panel
if "%choice%"=="9" ping www.google.com
if "%choice%"=="0" shutdown /s /t 0
goto menu
