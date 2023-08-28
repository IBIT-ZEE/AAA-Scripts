@call AAA-Log %0 %*


:MAIN
	if "%~1"=="" ( AAA-Obs %0 )
	
	goto :%1
	
	exit /b

:CONTROL
	inetcpl.cpl
	exit /b

:ON
	~ route delete 0.0.0.0
	exit /b


:OFF
	~ route delete 0.0.0.0
	exit /b




:OBS
>internet-
>proxy-
>route-
>www-

	On ........ add default route
	Off ....... delte default route
	State .....
	
	Options ... ?
	Control ... Windows internet Control-Panel

