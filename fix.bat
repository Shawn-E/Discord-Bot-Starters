@echo off
color 4
SET product=Ban Database

echo %product% is Fixing...
echo Using --force
echo.
timeout 2 > NUL
npm audit fix --force
