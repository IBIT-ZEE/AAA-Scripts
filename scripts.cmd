

:MAIN
	@echo off
	if "%~1"=="" AAA-Obs %0
	
	:: 2DO*** 
	:: aaa-vars %AAA-Links%
	
	
	for /F %%f in ('dir /b c:\dat\#links\%1.lnk') do (echo %%~nf)
	REM for /F "tokens=4" %%f in ('dir c:\dat\#links\%1') do echo %%~nf

	goto :END

:END
	echo. 
	echo.
	exit /b


:OBS
>LinksX
>Scripts
>ScriptsX
>ScriptsXX


	Links <pattern>
	
	* list data from <links>

		
	// SAMPLES
	links a*
	links *aa*
	links a*!
	links *a#


