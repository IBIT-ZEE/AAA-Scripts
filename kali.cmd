


:MAIN
	@echo off
	if "%~1"=="" AAA-Obs %0

	goto :%1
	
	exit /b


:ON
	me-kali-on
	exit /b


:OFF
	me-kali-off
	exit /b


:SSH
	me-kali-SSH
	exit /b	

:STATE
	me-kali-state
	exit /b

:SHOW
	me-kali-show
	exit /b	


:END
	echo,
	echo,
	exit /b


:OBS
>kali-

	*Kali Linux managment scripts
	*WSL/Hyper-V/...


	Kali default machine (me-kali-*)
	Actions:

		ON ...... Start
		OFF ..... Shutdown
		STATE ... Show state

		SHOW .... Kali default machine show...
		SSH ..... Kali default machine ssh to...
