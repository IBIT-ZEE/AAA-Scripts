
:: @if "%~1"=="" ( AAA-Obs %0 )
:: OS quirks processing "%" passed to other commmands
:: fixed with direct call to Text-Chunk
@if "%~1"=="" ( Text-Chunk %~f0 )


:: %*
:: and next drop console used to launch the executable
:: START is used here (to detach the process)
:: but we loose the ability to call %.cmd from Windows-Run-Box/Win+R
@start /b "%date%-%time%" %*
@exit /b


:OBS
>%%.cmd
>go.cmd
>run.cmd


	Syntax:

		% <commands>


		* version to force detach launching processes
		use & for command composition" ^
		and &&/|| for command conditional composition"
