


:MAIN
	:: if "%~1"=="-?" ( call AAA-Obs %0 )
	call AAA-Obs %0 

	setlocal
	
	for %%f in ( %aaa-scriptsx%\%~n0-* ) do @( echo %%~nf )

	endlocal
	
	exit /b



:OBS
>ip-
>ip-data

	Network OSF/L3 IP protocol available scripts:
	
	use: ip-