:ENTRY
	CALL IBIT_LOG %0 %*
	if "%1"=="" goto :CATCH0


:INITIALIZE
	setlocal
	prompt ^>
	set aavShell=0
	call !isShell.cmd
	if errorlevel 1 set aavShell=1
	if %aavShell%==1 mode con lines=8 cols=64

:BEGIN
	set x=%*
	echo . ~ para terminar...
	echo X ~ ultimo resultado...
	echo ^>%x%

:MAIN
	set /a x=%x%
	echo %x%
	set /P x=^>
	if "%x%"=="." goto :END
	goto :MAIN


:CATCH0
	echo CALC ^<formula^>
	goto END
	

:END


:FINALIZE

	
:EXIT
	exit /b


