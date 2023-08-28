:: Loop a set of commands with a timeout (default AAA-Timeout -or- 5 seconds)...


:MAIN
call AAA-Log %0 %*

	:: look for arguments
	:: and prevent AAA context fault
	if "%~1"=="" ( AAA-Obs %0 )
	if NOT defined AAA-Timeout set AAA-Timeout=5
	
	for /L %%f in () do @( 
		%*
		%windir%\system32\Timeout.exe %aaa-Timeout%
		echo ----------------------------------------
		)

	exit /b 0


:Obs
	Syntax:
	
		AAA-Loop <commands-to-loop>

		Loop a set of commands with timeout
		uses AAA-Timeout variable for default delay...
		AAA-Timeout = <n> to redefine timeout


	2FIX***
		QUIRK*** not passing arguments &/&& separated
		QUIRK*** cannot break/exit for loop
		:: echo use 'q' to break when timeout...
		:: do not use ... & ... to not interfere with &&/|| circuit
		:: choice.exe /T 1 /D 0 /C "0q"
		:: QUIRK*** this is not working inside the loop
		:: if ERRORLEVEL 2 exit /b 0



