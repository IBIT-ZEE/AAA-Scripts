@echo off
:MAIN
	if "%~1"=="" AAA-Message "supply file/folder..."
	
	:: NOO LOCAL VARS NEED
	:: NO RECURSIVITY NEED 
	:: elegant and simplistic solution with Where ?.* and for
	if exist "%~1\*" ( 
		C:\XXX\!!!!TEMP\GeekDrop\GeekDrop-Props.exe "%~1"
		) else (
		for /F %%f in ( 'where "%~1.*"' ) do ( 
			start /b C:\XXX\!!!!TEMP\GeekDrop\GeekDrop-Props.exe "%%f"
			) 
		) 

