

:MAIN
	@echo off
	
	if "%~1"=="" (
		Call AAA-Obs %0
		nic-list
		)
	
	net.exe %*

	exit /b


:OBS
	Fork:

	net-
	net.exe for os command override


========
NIC-List
--------