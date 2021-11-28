

:: if no args message & exit
if "%~1"=="" (
	Call aaa-message ^
		"Fork:" ^
		"" ^
		"route-" ^
		"" ^
		"States:" ^
		"route0 ->  10.0.0.254/IF#40" ^
		"route1 -> 10.0.1.254/IF#39"

	AAA-ScriptsXX %~n0
	
	)

:: else recurse to command
route.exe %*
exit /b



:OBS
ATT***
Interface-Index is required to direct the route,
OS frequently changes the Interface-Index/ifIndex
so it must be obtained from the Mac-Adress



