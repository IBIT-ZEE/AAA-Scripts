:ENTRY
	CALL IBIT_LOG
	if "%1"=="" goto ERR_SYNTAX
	if "%2"=="" %0 %1 %cd%
	

:BEGIN


:MAIN
	echo Files existing in [ %1 ]
	echo that not exist in [ %2 ]
	echo.
	echo.
	Xcopy /s/d/l %1 %2	
	goto END

	
:ERR_SYNTAX
	echo DiffDir ^<folder_BASE^> [^<folder_COMPARER^>]
	goto END

	
:END
	echo. 
	echo.

	
:EXIT



