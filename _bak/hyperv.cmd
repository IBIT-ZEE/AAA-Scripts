
:MAIN
	@echo off
	if "%~1"=="" AAA-Obs %0

	goto :%1
	
	exit /b


:ON
	:: hyperv-on
	net start vmcompute
	exit /b


:OFF
	:: hyperv-off
	net stop vmcompute
	exit /b


:GUI
	:: hyperv-gui
	start /b "Hyper-V" C:\Windows\System32\virtmgmt.msc
	exit /b

:LIST
	:: hyperv-list
	powershell "get-vm"
	exit /b

:STATE
	:: hyperv-off
	powershell "get-vm"
	exit /b

:END
	echo,
	echo,
	exit /b


:OBS
>hv 
>hyperv
>hyperv-
>vm-

>me-
>server-
>server*-


	*Hyper-v AAA/Umbrella
	
	Actions
		ON ...... hyperv-on
		OFF ..... hyperv-off
		GUI ..... Hyper-v GUI
		LIST .... List VMs
		STATE ... Inspect a VM

