:ENTRY
	CALL IBIT_LOG

:INITIALIZE
	if NOT "%1"=="" goto BEGIN
	CD /d "C:\SYS\microsoft.net\framework\v4.0.30319"
	dir *.exe
	goto END

:BEGIN


:MAIN
	echo %*
	pause
	goto END


:ERR_SYNTAX
	echo WinShell shortcut.lnk helper, use ! cmd ^<p1^> ^<...^> ^& (...)
	start "" CMD /k "Call IBIT_Log"
	goto END

:END
	echo. 
	echo.

:FINALIZE
	
:EXIT



