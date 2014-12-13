::@echo off

set tibasic=%~dp0\tibasic.exe
set language=en

call "%tibasic%" -a -c %~dp0\config.xml -l %language% -w %~dp0\src\ "%~dp0\src\main.txt"

move /Y "%~dp0\src\main.8xp" "%~dp0\chemsuite.8xp"

IF "%2"=="start" (
	SET TILEM=%3
	SET ROM=%4

    ::Starting the emulator!
    call %3 -r %4 %~dp0\chemsuite.8xp
)