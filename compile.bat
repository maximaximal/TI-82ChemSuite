::@echo off

set tibasic=%~dp0\tibasic.exe

call "%tibasic%" -a -w %~dp0\TokenIDE\ "%~dp0\TokenIDE\main.txt"

move /Y "%~dp0\TokenIDE\main.8xp" "%~dp0\chemsuite.8xp"

IF "%2"=="start" (
	SET TILEM=%3
	SET ROM=%4

    ::Starting the emulator!
    call %3 -r %4 %~dp0\chemsuite.8xp
)