

:: if no args message & exit
if "%~1"=="" (
	Call aaa-message ^
		"Fork:" ^
		"" ^
		"VM-" ^
		"" ^
		"Hyper-V/vmconnect extension actions..." ^
		"" ^
		"States:" ^
		"VM0 -> Work/WindowsX64" ^
		"VM1 -> Work/WindowsX32" ^
		"..."

	AAA-ScriptsXX %~n0
	
	)

:: else recurse to command
vmconnect.exe %*
exit /b



:OBS
ATT***
...
...
...



