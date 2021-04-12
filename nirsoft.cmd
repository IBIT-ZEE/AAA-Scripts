Call AAA-Log %0 %*


:MAIN
	setlocal
	set xFolder=c:\apl\!tools\nirsoft
	if "%xFolder%\%~1"==""           goto :GO
	if not exist "%xFolder%\%~1.exe" goto :GO
	goto :GOX

:GO
	dir /w "%xFolder%\%~1*.exe"
	goto :END

:GOX
	"%xFolder%\%~1" %*
	goto :END

	
:END
	endlocal
	echo.
	echo.
	exit /b