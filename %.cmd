
:: @if "%~1"=="" ( AAA-Obs %0 )
:: OS quirks processing "%" passed to other commmands
:: fixed with direct call to Text-Chunk
@if "%~1"=="" ( Text-Chunk %~f0 )

:: if START is used here (to detach the process)
:: we loose the ability to call %.cmd from Windows-Run-Box/Win+R
%*
@exit /b


:OBS
>%.cmd
>go.cmd
>run.cmd


	Syntax:

		%% <commands>


		* version to not prevent launch of a new console
		* or to use from Windows-Run-Box
		* in Win-Run leverage the path avoiding full paths
		use & for command composition" ^
		and &&/|| for command conditional composition"