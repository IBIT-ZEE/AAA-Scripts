@Call AAA-Log %0 %*

:INIT
	if "%~1"=="" AAA-Message "Syntax:" "" "commands <text>" "" "Wildcards accepted!"
	if defined AAA-Env goto :MAIN
	goto :END
	
:MAIN

	
	for %%f in ( %AAA-Scripts% %AAA-ScriptsX% %AAA-ScriptsXX% ) do (
		echo ----------------------------------------[ %%f ]
		dir /s/b %%f\%1
		echo, 		
		)



:END
	echo, 
	echo, 