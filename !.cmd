CALL AAA-Log %0 %*

:ENTRY
	if "%~1"=="" goto :CATCH1
	set aavTemp=


:MAIN
	:: This allows the user to type only the name (no extension)
	:: ?is a Windows Shell GUI shortcut... else ShellExec( %1 )

	:: if   NAME exists in path as a .LNK (where.exe)
	:: then SAVE it in a variable
	for /F "tokens=*" %%f in ( 'Where.exe "%~n1.lnk"' ) do set aavTemp=%%f
	if "%aavTemp%"=="" goto :CATCH2

	:: discard 1st parameter (the executable name) and...
	:: start it with the rest of the parameters
	shift
	start "%aavTemp%" %aavTemp% %1 %2 %3 %4 %5 %6 %7 %8 %9
	
	:: ?program error
	if ERRORLEVEL 1 goto :CATCH0
	goto :END


:CATCH0
	echo,
	echo,
	echo 	%errorlevel%  ~  %cd%  ~  %date% %time%
	:: program glitches
	goto :END


:CATCH1
	:: no arguments
	grep -Poz "\n:OBS\K[\w\W]*?(?=\n:)" %~f0
	goto :END


:CATCH2
	:: file not found in paths
	echo %1
	grep -Poz "^:OBS\K[\w\W]*?(?=^:)" %~f0
	goto :END

	
:END
	echo,
	echo,

	
:EXIT
	exit /b


:OBS
	Shell shortcut invoker
	
	indique o Windows-Shell-Shortcut (*.lnk) a invocar
	Pode indicar parametros (1..9) que serão passados ao Target...

	* usefull also for launch shortucuts with Administrator flag...

:

