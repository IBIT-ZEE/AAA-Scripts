:ENTRY
	@echo off
	call ibit_log


:INIT


:BEGIN
	if "%2"=="" goto ERR_SYNTAX

	echo Will update (includes subfolders, read-only and hidden files)
	echo.
	echo     de/from  : %1
	echo     para/to : %2
	echo.
	timeout 10

	echo Update prevision...
	echo.
	XCOPY /l/s/h/r/y/u %1 %2 %3
	echo.
	timeout 10
	echo Increment prevision...
	echo.
	XCOPY /l/s/h/r/y/a %1 %2 %3

	REM -----INTERFACE-----
	echo.
	echo.
	set /p aavTemp="Continuar (S/N) : "
	if "%aavTemp%"=="S" goto MAIN
	echo.
	echo User terminated...
	goto End

:MAIN
	echo Updating...
	echo.
	XCOPY /s/h/r/y/u %1 %2 %3
	echo.
	echo.
	echo Incrementing...
	echo.
	XCOPY /s/h/r/y/u %1 %2 %3
	echo.
	goto END

:ERR_SYNTAX
	echo Sintaxe : 
	echo.
	echo     Updater ^<origem^> ^<destino^>
	goto END

:END
	echo.
	echo.

:FINALIZE

:EXIT