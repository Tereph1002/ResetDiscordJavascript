@echo off
title Discord Backdoor Fixer - Ver1.0
color 2
taskkill /f /im Discord.exe>nul 2>&1
C:
cd C:\Users\%username%\AppData\Local\Discord\app-1.0.9004\modules\discord_desktop_core-1\discord_desktop_core>nul 2>&1
set path1=%errorlevel%
cd C:\Users\%username%\AppData\Local\Discord\app-1.0.9004\modules\discord_desktop_core-2\discord_desktop_core>nul 2>&1
set path2=%errorlevel%
cd C:\Users\%username%\AppData\Local\Discord\app-1.0.9004\modules\discord_desktop_core-3\discord_desktop_core>nul 2>&1
set path3=%errorlevel%
if %path1%==1 (
	if %path2%==1 (
		if %path3%==1 (
			echo Fix Failed
			echo Press any key to exit...
			pause>nul
			exit
		)
	)
)
echo module.exports = require('./core.asar');> index.js
echo Press any key to exit...
pause>nul