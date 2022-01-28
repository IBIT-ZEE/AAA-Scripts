

:MAIN
	@echo off
	if "%~1"=="" ( AAA-Obs %0 )
	

	c:\apl\Cygwin64\bin\file.exe %*

	exit /b


:OBS
	Fork:

		file <filename>

		-or

		file-*


	* show file information (Linux/GNU file command)
	* or use the AAA/file- command
	
	