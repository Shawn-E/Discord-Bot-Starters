@echo off
color 0e
SET product=Ban Database

start powershell -noexit -command "node ."
echo %product% is starting in a separate window.
echo This window will close automatically in 5 seconds.
timeout 5 > NUL
exit