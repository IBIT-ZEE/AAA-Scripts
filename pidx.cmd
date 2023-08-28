call AAA-Log %0 %*

:MAIN
	if "%1"=="" ( AAA-Obs %0 )

	wmic.exe ^
		process where (handle = %1 ) ^
		get * ^
		/format:value

	exit /b


:OBS
>pid
>pidxx
>wmic.exe
>process-

	Syntax:

		pidX <pid>
