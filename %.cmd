
@if "%~1"=="" ( 
	AAA-Message ^
		"Syntax:" ^
		"" ^
		"%% <commands>" ^
		"" ^
		"use & for command composition" ^
		"and &&/|| for command conditional composition"
		)

:: if START is used here (to detach the process)
:: we loose the ability to call %.cmd from Windows-Run-Box/Win+R

:: %*
:: and next drop console used to launch the executable
@start /b "" %*
@exit /b







