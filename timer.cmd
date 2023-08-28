call AAA-Log %0 %*


:MAIN
	if "%1"=="" ( AAA-Obs %0 )
	
	time-out %1
	
	exit /b


:OBS
>time-
>time-out

	Syntax:

		Timeout <seconds>
