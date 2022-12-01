@echo off
SetLocal EnableDelayedExpansion
set "PID_LIST="

for /f "tokens=2" %%V in ('tasklist.exe ^| findstr /i "httpd.exe" 2^>NUL') do @set "PID_LIST=!PID_LIST! /PID %%V"

:: >nul 2>&1 suppresses the output of taskkill
if defined PID_LIST (
	taskkill.exe /F %PID_LIST% >nul 2>&1
)

SetLocal DisableDelayedExpansion