call AAA-Log %0 %*

:MAIN
	if "%1"=="-?" ( AAA-Obs %0 )
	
	if "%1"=="" ( 
		if exist c:\DAT\#ScriptsXX\me-router-config.cmd ( me-router-config ) 
		)

	AAA-Obs %0
	exit /b


:OBS
>me-
>route-
>router-  
>network-

>router.exe


	ATT ***
	if "me-router-config.cmd" exists,
	then it us called as the default action for router
