:ENTRY
	CALL IBIT_LOG
	if "%1"=="" goto ERR_SYNTAX
	if "%2"=="" %0 %1 %cd%
	

:BEGIN


:MAIN
	echo File BASE _______ [ %1 ]
	echo File COMPARER ___ [ %2 ]
	echo.
	echo.
	echo Xcopy /s/d/l %1 %2	*** NOT IMPLEMENTED YET
	goto END

	
:ERR_SYNTAX
	echo DiffFile ^<file_BASE^> [^<file_COMPARER^>]
	goto END

	
:END
	echo. 
	echo.

	
:EXIT



