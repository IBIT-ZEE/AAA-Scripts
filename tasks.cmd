CALL IBIT_LOG %0 %*

if "%~1"=="" goto :CATCH1
	TaskList /FI "IMAGENAME eq %1"
	goto :END

:CATCH1
	TaskList

:END
	echo.
	echo.


