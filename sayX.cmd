Call AAA-Log %0 %*


:MAIN
	if "%~1"=="" AAA-Obs %0
	for %%f in ( %* ) do nircmd speak text %%f
	exit /b


:Obs

	Use:

		Say <arg1> ...

	Primitives:
	
		nircmd
			speak text ~$clipboard$
			speak text "visit http://www.nirsoft.net" 2 80
			speak file "x.txt"
			speak file "x.txt" 0 100 "x.wav" 48kHz16BitStereo
	
	>nircmd-help.cmd		?> "speak" for further help...


