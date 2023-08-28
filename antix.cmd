


:MAIN
	@echo off
	if "%~1"=="" AAA-Obs %0

	goto :%1
	
	exit /b


:ON
	:: antix-on
	server0-vm-antix_ON
	exit /b


:OFF
	:: antix-off
	server0-vm-antix_Off
	exit /b


:END
	echo,
	echo,
	exit /b


:OBS
>antix-

	*Antix Linux managment scripts
	
	Actions
		ON .... antix-on
		OFF ... antix-off

