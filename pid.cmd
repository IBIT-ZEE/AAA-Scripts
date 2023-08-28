call AAA-Log %0 %*

:MAIN
	if "%1"=="" ( AAA-Obs %0 )

	wmic.exe ^
		process where (handle = %1 ) ^
		get caption,sessionid,status,creationclassname,csname

	wmic.exe ^
		process where (handle = %1 ) ^
		get commandline

	wmic.exe ^
		process where (handle = %1 ) ^
		get * ^
		/format:value

	exit /b


:OBS
>pids
>pidx
>pidxx
>wmic.exe
>process-

	Syntax:

		pid <pid>


