@echo off

:BEGIN
	:: if no args message & exit
	if "%~1"=="" (
		Call aaa-message ^
			"Fork:" ^
			"" ^
			"net-" ^
			"net.exe"

		exit /b
		REM AAA-ScriptsXX %~n0
		)

:MAIN
	:: else recurse to command
	net.exe %*

:END
	echo,
	echo,
	exit /b


:OBS
ATT***



