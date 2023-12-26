@echo off
:menu
cls
echo.
echo 1. Reset Computer
echo 2. Enter UEFI firmware settings
echo 3. Sign out
echo 4. Sleep
echo 5. Open Task Manager
echo 9. Turn off computer
echo.
set /p choice="Enter your choice: "
if "%choice%"=="1" shutdown /r /t 0
if "%choice%"=="2" shutdown /r /fw /t 0
if "%choice%"=="3" shutdown /l
if "%choice%"=="4" rundll32.exe powrprof.dll,SetSuspendState 0,1,0
if "%choice%"=="5" start taskmgr
if "%choice%"=="9" shutdown /s /t 0
goto menu
