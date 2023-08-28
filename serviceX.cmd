

:MAIN
	@echo off
	
	if "%~1"=="" AAA-Obs %0

	service-listX %*
	
	:: fail-safe
	:: script exited at last script invoke
	exit /b


:OBS
	Fork:

	service-


	***Shortcut
	
		if any argument is supplied
		service-list is invoked with that argument...


