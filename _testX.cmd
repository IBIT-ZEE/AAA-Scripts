:ENTRY
	Call IBIT_LOG %0 %*
	setlocal

:INIT
	set aaaDebug=0
	set aaaIsShell=

:BEGIN

:MAIN
	echo 	%%comspec%% ______ %comspec%
	echo 	%%errorlevel%% ___ %errorlevel%
	echo 	%%cmdcmdline%% ___ %cmdcmdline%
	echo 	%%cd%% ___________ %cd%
	echo 	%%date%% _________ %date%
	echo 	%%time%% _________ %time%
	echo 	%%0 ______________ %0
	echo 	%%* ______________ %*
	echo.
	echo.

	echo TEST -> PAUSE/TIMEOUT only if started from SHELL
	echo %cmdcmdline% | find /i "%comspec% /c" >nul
	if ERRORLEVEL 1 ( set aaaIsShell=0 ) else ( set aaaIsShell=1 )
	echo aaaIsShell is %aaaIsShell%
	if %aaaIsShell%==1 pause
	echo.
	echo.
	
	call :SUB 111 222 333 444
	echo POS-CALL-CODE
	echo.
	echo.
	
	goto END

:SUB
	echo %1 %2 %3 %4
	goto EXIT
	
:END
	echo.
	echo.

:FINAL


:EXIT
	exit /b
	endlocal
