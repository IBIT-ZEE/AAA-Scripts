:: TYPE: fork

:MAIN
	@echo off
	if "%1"=="" ( AAA-Obs %0 )
	
	c:\apl\!TOOLS\Sysinternals\regjump.exe %*
	exit /b 


:OBS
>registry
>regjump
>regedit.exe


	Open <argument> key in Registry/GUI
	* uses SysInternals/regjump.exe <args...>
	
		-else-
	
	Show this message


