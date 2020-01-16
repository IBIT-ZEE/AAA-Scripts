:ENTRY
	CALL IBIT_LOG
	if "%1"=="" goto ERR_SYNTAX


:INITIALIZE


:BEGIN
	if "%1"=="-c" %~0 ~$clipboard$

	
:MAIN
	C:\APL\!TOOLS\NirSoft\nircmdc.exe speak text "%*"
	goto END


:ERR_SYNTAX
	echo speak ^<text^>
	echo or
	echo speak -c to voice data in  clipboard
	goto END
	
:END
	echo. 
	echo.

:FINALIZE

	
:EXIT



