

:MAIN
	:: if no args message & exit
	if "%~1"=="" ( aaa-obs %~f0	)
	:: AAA-ScriptsXX %~n0

:: else recurse to command
route.exe %*
exit /b


:OBS
>net-
>internet-
>proxy-
>route-
>router-
>www-

>gw
>nics
>routes

Options

	On .......
	Off ......
	List .....
	State ....
	Status ...


	ATT***
	Interface-Index is required to direct the route,
	OS frequently changes the Interface-Index/ifIndex
	so it must be obtained from the Mac-Adress

	route add 0.0.0.0  mask 0.0.0.0 10.0.1.254 if ???39 metric 7777
	route add 10.0.0.0 mask 255.0.0.0 0.0.0.0  if ???39
	
	route delete 0.0.0.0
	route delete 10.0.0.0


