:ENTRY
	CALL AAA-Log %0 %*
	setlocal
	if "%1"=="" goto CATCH1


:INITIALIZE
	

:BEGIN


:MAIN
	start "%*" C:\APL\!TOOLS\_applets\Notepad++64\notepad++.exe %*
	if ERRORLEVEL 1 goto CATCH1
	goto :END


:CATCH1
	grep -Poz "^:TEXT1\K[\w\W]*?(?=:)" %~f0
	goto :END

	
:END
	echo,
	echo,


:FINALIZE

	
:EXIT
	endlocal
	exit /b


:TEXT1
Edit <filename> ...

	* edit file(s) with preset editor (Notepad++)
:


