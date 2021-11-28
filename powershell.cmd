@Call AAA-Log %0 %*


:MAIN
	if "%~1"=="" ( AAA-Obs %0 )

	C:\APL\Microsoft\PowerShell64\pwsh.exe -c %*

	exit /b


:Obs

	Syntax:
	
		Powershell "<commands;...>"
	


	ATT***
		PS5/Powershell5
		PS7/Powershell7

	Invoking Powershell commands whith this script
	assures the optioned version of powershell 2..5/6/7/...
	is used as the default one (opt-in)


	5.x ~> C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe %*
	7.x ~> C:\APL\Microsoft\PowerShell64\pwsh.exe %*



