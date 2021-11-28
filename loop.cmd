:: Loop a set of commands with a optional timeout (default is 5 seconds)...


:MAIN
call AAA-Log %0 %*

	:: look for arguments
	:: and prevent AAA context fault
	if "%~1"=="" ( AAA-Obs %0 )
	if NOT defined AAA-Timeout set AAA-Timeout=5

	for /L %%f in () do ( 
		%* & %windir%\system32\Timeout.exe %aaa-Timeout% 
		)


:Obs
	Syntax:
	
		AAA-Loop <commands-to-loop>

		Loop a set of commands with timeout
		uses AAA-Timeout variable for default delay...
		AAA-Timeout = <n> to redefine timeout


