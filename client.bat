@echo off
color 3
rem START CONFIG
set product=Ban Database 
rem END CONFIG
echo %product%
echo.
:menu
echo 1. Start
echo 2. Install
echo 3. Fix
echo 4. Credits
echo.
echo Select one: 
set /p selection=
if %selection% == 1 goto start
if %selection% == 2 goto install
if %selection% == 3 goto fix
if %selection% == 4 goto credits

CALL :menu

:start
cls
echo [Start]
echo.
echo %product% is starting...
start powershell -noexit -command "node ."

:install
cls
echo [Install]
echo.
echo Installing Dependencies...
echo.
npm i

:fix
cls
echo [Fix]
echo.
echo Fixing...
echo Using --force
echo.
npm audit fix --force


:credits
cls
echo [Credits]
echo.
rem ADD CREATORS OF PRODUCT HERE
echo Created by: @Shawn E - https://store.shawnengmann.com
echo.
echo.
CALL :menu
