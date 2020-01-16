:ENTRY
	CALL IBIT_LOG
	if "%1"=="" goto ERR_SYNTAX

	
:INITIALIZE
	

:BEGIN
	if "%1"=="-h" ( start C:\APL\!TOOLS\NirSoft\nircmd.chm && goto END)

:MAIN
	C:\APL\!TOOLS\NirSoft\nircmdc.exe %*
	goto END


:ERR_SYNTAX
	echo cmdX ^<p1^> ^<...^> ^& (...)
	echo.
	echo     -h for extended help
	goto END
	
:END
	echo. 
	echo.

:FINALIZE

	
:EXIT



