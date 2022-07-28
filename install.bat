@echo off
color 6
SET product=Ban Database

echo %product% is Installing Dependencies...
echo.
timeout 2 > NUL
npm install
