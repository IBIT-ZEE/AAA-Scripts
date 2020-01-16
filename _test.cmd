:ENTRY
	Call IBIT_LOG %0 %*
	setlocal


:INIT
	set aaaTemp=1
	set aaaDebug=1

:BEGIN


:MAIN
	if %aaaDebug%==1 (
		echo %date% ~%time% ~ %errorlevel% ~ %cd%
		echo %random%%random% 
		echo,
		echo,
		)

	echo file:_test.txt
	type _test.txt
	echo,
	echo,

	echo for /F "tokens=1-9,*" %a in ( _test.txt ) do echo %a %b %c
	for /F "tokens=1-4,*" %%a in ( _test.txt ) do echo %%a %%b %%c %%d * %%e 
	echo,
	echo,


	:: call :SUB1 111 222 333
	:: ? errorlevel from :SUB1
	:: echo ERRORLEVEL from :SUB1 is %errorlevel%
	goto END

	
:SUB1
	echo !!!!SUB1!!!!
	
	for %%f in ( %* ) do echo %%f
	pause
	
	:: return/set errorlevel1
	exit /B 1

	
:END
	echo.
	echo.

:FINAL


:EXIT
	exit /b 0
	endlocal

