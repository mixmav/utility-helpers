@echo off
:: The %~dp0 is the path of the batch file,
:: which is the same as the path for the node script
:: %CD% is the current directory that the node script is expecting

set apache_path=C:/xampp/apache
node %~dp0 and update-dr.js %CD% %apache_path%


:: kill existing httpd process
SetLocal EnableDelayedExpansion
set "PID_LIST="

for /f "tokens=2" %%V in ('tasklist.exe ^| findstr /i "httpd.exe" 2^>NUL') do @set "PID_LIST=!PID_LIST! /PID %%V"

:: >nul 2>&1 suppresses the output of taskkill
if defined PID_LIST (
	taskkill.exe /F %PID_LIST% >nul 2>&1
)

SetLocal DisableDelayedExpansion


:: start it again
start /B %apache_path%/bin/httpd.exe

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:error
echo.
echo Apache konnte nicht gestartet werden
echo Apache could not be started
pause

:finish
echo The document root has been updated to %CD%
echo:Apache has been started again