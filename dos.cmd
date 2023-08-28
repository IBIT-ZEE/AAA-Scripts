call AAA-Log %0 %*  

:MAIN
	if "%~1"=="" ( AAA-Obs %0 ) 
	
	start dosx.lnk /k %*
	
	exit /b 


:OBS
	Syntax:
	
	DOS <command> [ ^& ... ]

	Launch a new terminal and execute the commands
	(if multiple commands separate them with ^& )


	// SAMPLES
	DOS dir /s/b *wsl*
	DOS echo %date% - %time% ^& pause
	
