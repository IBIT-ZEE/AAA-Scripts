Call AAA-Log %0 %*


if "%~1"=="" ( 
	Call aaa-message ^
		"Fork:" ^
		"" ^
		"netscan" ^
		"" ^
		"States:" ^
		"netscan0 -> 10.0.0.+" ^
		"netscan1 -> 10.0.1.+" ^
		"..."


	AAA-ScriptsXX %~n0 
	)

Start /b "Netscan" C:\APL\!TOOLS\NirSoft\fastresolver.exe %*
