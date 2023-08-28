@echo off
if "%~1"=="" AAA-Obs %0

:BEGIN
	setlocal

	if not exist "%~1" (
			AAA-Message "Path do not exist:" "" "%1" 
			)

:MAIN
	@echo off
	
	set VK_TAB=	
	for %%f in ( %1 ) do @( echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf%VK_TAB% ^| %%~nf )


:END
	echo,
	echo,
	endlocal
	exit /b


:Obs

	Syntax:

		ls <path>
	
		*Wildcards accepted (?/*)
		>lsx for recursive behaviour

		Samples
		=======
			ls /?
			ls x.*
			ls *.x*
		
			ls \Windows\*.exe
			ls c:\Windows\System32\*.msc


