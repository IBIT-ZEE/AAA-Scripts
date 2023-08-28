call AAA-Log %0 %*

:MAIN
	if "%1"=="" ( AAA-Obs %0 )
	exit /b

:OBS
>ddns
>ip-update
>me-wan-ip-update

	?
	ibit.softether.net

