
:MAIN
	@echo off
	if "%~1"=="" ( AAA-Obs %0 )
	goto :%1
	exit /b

:ON
	work-on.cmd
	exit /b

:OFF
	work-off.cmd
	exit /b

:STATE
	work-state.cmd
	exit /b

:SHOW
	work-show.cmd
	exit /b

:SSH
	work-ssh.cmd
	exit /b


:OBS
>work-
>me-
>server0-

	Work- processor
	
	Use:
		ON ......
		OFF .....
		STATE ...
		SHOW ....

		SSH .....

		Work#	Shell shortcuts
		Work!	!!!!WORK
		Work%	work VM/Windows WS
		WorkX%	work VM/Windows Server
		

