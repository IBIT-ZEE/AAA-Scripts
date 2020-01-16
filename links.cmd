:ENTRY
	CALL IBIT_LOG
	if "%1"=="" goto ERR_SYNTAX

:BEGIN

:MAIN
	for /F %%f in ('dir /b c:\dat\#links\%1') do echo %%~nf
	REM for /F "tokens=4" %%f in ('dir c:\dat\#links\%1') do echo %%~nf

	goto END

:ERR_SYNTAX
	echo Links ^<pattern^>
	goto END

:END
	echo. 
	echo.

:EXIT



