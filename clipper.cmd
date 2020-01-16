:ENTRY
	CALL IBIT_LOG %0 %*
	:: if "%1"=="" goto CATCH1
	setlocal


:INITIALIZE


:BEGIN


:MAIN
	grep -Poz "^:TEXT0\K[\w\W]*?(?=:)" %~f0
	if "%1"=="" goto :END
	echo ~~ %*
	echo ~~ %* | CLIP 
	if ERRORLEVEL 1 goto :CATCH0
	goto END


:CATCH0
	echo ERRORLEVEL %errorlevel% ~ %date%~%time% ~ %cd%
	grep -Poz "^:TEXT0\K[\w\W]*?(?=:)" %~f0
	Timeout 60
	goto END

	
:CATCH1
	grep -Poz "^:TEXT1\K[\w\W]*?(?=:)" %~f0
	goto END


:END
	echo. 
	echo.


:FINALIZE

	
:EXIT
	endlocal
	exit /b


:TEXT0
~

	AAA/CCC
	
	AAA clipped comand composer
	The information received was clipped into system clipboard
	Paste in command line and remove trailling '~~' to execute
	Replace the parameters as your needs and execute the command

	* is case of multiline examples only the last is inserted
	
: