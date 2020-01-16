:INIT
	@echo off 
	cls
	echo (c) ZEE 2014 (r)
	echo.
	echo.
	echo imDisk dropper to %1
	echo. 
	echo.

:MAIN
	if "%1"=="" goto ERR_NODRIVEORFILE
	set aav0=C:\SYS\system32\imdisk.exe
	echo ((((UNMOUNTING))))
	%aav0% -D -m %1
	echo.
	echo ((((MOUNTING %1))))
	%aav0% -a -m %1 -f %2
	echo.
	echo Delay for OS filesystem catch-up...
	Timeout /t 5
	start %1
	timeout /t 10
	goto end

:ERR_NODRIVEORFILE
	echo no drive or file specified...
	goto MSG_SYNTAX

:MSG_SYNTAX
	echo imDisker ^<drive^> ^<file.iso^>
	timeout /t 60
	goto END

:END
	echo.
	echo.


