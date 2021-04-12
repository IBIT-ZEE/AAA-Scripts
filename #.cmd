:ENTRY
	call ibit_log %0 %*


:INITIALIZE
	setlocal
	:: if not defined aavObject goto ERR_SYNTAX
	if "%~1"=="" AAA-Message "Supply a Shortcut name..."

:MAIN
	set x=%homedrive%\dat\#links\%~1.lnk
	if not exist %x% goto ERR_ABSENTIA
	start "%x%" %x%
	goto END


:CATCH1
	:: no arguments
	grep -Poz "^:TEXT1\K[\w\W]*?(?=^:)" %~f0
	goto :END


:ERR_ABSENTIA
	AAA-Message "Shortcut inexistent..." "" %x%
	GOTO :END

:END
	echo.
	echo.
	endlocal
	exit /b


:FINALIZE


:EXIT



