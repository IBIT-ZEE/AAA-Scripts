call aaa-log %0 %*


:MAIN
	if "%~1"=="" ( AAA-Obs %0 )

	if /i %~1==on  ( wifi-hotspot-on  ) 
	if /i %~1==off ( wifi-hotspot-off ) 

	echo 	Argumento invalido...
	echo,
	echo 	use: On/Off
	echo,
	echo,
	
	exit /b


:OBS
	Syntax:

		Hotspot On/Off


