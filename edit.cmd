:ENTRY
	CALL AAA-Log %0 %*
	setlocal
	if "%1"=="" goto CATCH1


:MAIN
	start "%*" C:\APL\!TOOLS\_applets\Notepad++64\notepad++.exe %*
	goto :END


	
:END
	echo,
	echo,
	endlocal
	exit /b



