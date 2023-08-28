:: call AAA-Log %0 %*


:MAIN
	@echo off
	if "%1"=="" ( AAA-Obs %0 )
	
	dir /s/b %1
	
	exit /b


:OBS
>path
>pathx

	SAMPLE
	======
	paths a*

