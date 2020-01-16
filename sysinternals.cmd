Call AAA-Log %0 %*


:MAIN
	setlocal
	set xFolder=c:\apl\!tools\sysinternals
	if "%xFolder%\%~1"=="" goto GO
	if not exist "%xFolder%\%~1.exe" goto :GO
	goto :GOX

:GO
	:: ***2do
	dir /w "%xFolder%\%~1*.exe"
	:: dir all ^[%~1]*.*
	goto :END

:GOX
	"%xFolder%\%~1" %*
	goto :END

	
:END
	endlocal
	echo.
	echo.
	exit /b