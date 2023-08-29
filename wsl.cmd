
:MAIN

	@echo off
	if "%1"=="-?" ( AAA-Obs %0 )

	:: call WSL-List
	start "WSL/Linux" wsl.lnk
	::redundant fail-safe
	exit /b 


:OBS
>wsl-

	* Umbrella action:
	* prevents direct/default use of wsl.exe
	* if launched com CLI leverages .cmd precedence over .lnk
	* just starts a default WSL console pre-configured in wsl.lnk 
