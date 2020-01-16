
:ENTRY
	call IBIT_LOG

:INIT
	REM set | find /i "c:\"
	REM Remove ComSpec, Path

:BEGIN
	if "%1"=="" goto ERR_1
	if "%2"=="" goto ERR_1

:MAIN
	for %%f in (
		ALLUSERSPROFILE
		APPDATA
		CommonProgramFiles
		CommonProgramFiles^(x86^)
		CommonProgramW6432
		LOCALAPPDATA
		ProgramData
		ProgramFiles
		ProgramFiles^(x86^)
		ProgramW6432
		PSModulePath
		PUBLIC
		SystemRoot
		TEMP
		TMP
		USERPROFILE
		windir 
		) do ( cmd /c %1 "%%%%f%%\%2" )
	goto :END

:ERR_1
	echo SysDirX (System Dirs eXecutor)
	echo.
	echo Syntax is SysDirX ^<command^> ^<param0^>

:END
	echo.
	echo.
	
:FINAL
	
:EXIT

