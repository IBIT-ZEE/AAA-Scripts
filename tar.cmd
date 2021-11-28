

:MAIN
	@echo off
	if "%~1"=="" ( AAA-Obs %0 )
	
	tar.exe %*
	exit /b


:Obs

	AAA/Fork for tar
	Added to Windows 10 19.xx
	
	Syntax:
	
		Tar-
	
		~or~

		Tar <args*...>


	Tar-* 
		will use AAA smart-scripts for Tar operations
		state Tar~Last
	

