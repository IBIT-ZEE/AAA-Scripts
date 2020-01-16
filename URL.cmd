:ENTRY
	CALL IBIT_LOG %0 %*
	if "%1"=="" goto ERR0


:INITIALIZE


:BEGIN


:MAIN
	start "%*" %*
	goto END

	
:ERR0
	grep -Poz "^:SYNTAX\K[\w\W]*?(?=:)" %~f0
	goto END


:END
	echo. 
	echo.


:FINALIZE

	
:EXIT
	exit /b


:SYNTAX
SYNTAX 

	URL <url>


:ERROR1

ERRORLEVEL was > 0


: