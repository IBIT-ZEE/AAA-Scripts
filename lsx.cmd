@echo off
if "%~1"=="" AAA-Obs %0

:BEGIN
	setlocal
	::if not exist "%~1" ( AAA-Message "Path do not exist:" "" "%1" )


:MAIN
	set VK_TAB=	
	set x1=%~1
	set x2=%~dp1
	call set x3=%%x1:%x2%=%%
	
	echo Searching %x2%...
	:: for /R "%~dp1" %%f in ( "%~nx1" ) do @( echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf ^| %%~nf )
	:: for /F %%f in ( 'dir /s/b "%~1"' ) do @( echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf ^| %%~nf ^<- %%~dpf )
	for /R %x2% %%f in ( %x3% ) do (
		echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf%VK_TAB% ^| %%~nf (%%~dpf)
		)


:END
	echo,
	echo,
	endlocal
	exit /b


:Obs

	Syntax:

		lsx <path>
	
		*Wildcards accepted (?/*)
		>ls for simple folder behaviour

		Samples
		=======
			lsx x.*
			lsx *.x*
		
			lsx \Windows\*.exe
			lsx c:\Windows\System32\*.msc


