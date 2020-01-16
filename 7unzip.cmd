:ENTRY
	Call AAA-Log %0 %*
	if "%~1"=="" goto :CATCH1


:INITIALIZE

	
:BEGIN


:MAIN
	cd /d %~p1
	echo Folder is %cd%...
	:: c:\APL\!TOOLS\_APPLETS\7Zip32\7z.exe
	:: c:\APL\!TOOLS\_APPLETS\7Zip64\7z.exe
	7z -r x %~nx1 *.*
	if ERRORLEVEL 1 goto :CATCH2
	
	start %~p1
	if ERRORLEVEL 1 goto :CATCH2
	
	Timeout 60
	
	goto END

	
:CATCH1
	grep -Poz "^:TEXT1\K[\w\W]*?(?=:)" %~f0
	goto END


:CATCH2
	echo.
	echo.
	echo ERRORLEVEL : %errorlevel%
	echo FOLDER     : %cd%
	grep -Poz "^:TEXT2\K[\w\W]*?(?=:)" %~f0
	Timeout 60
	goto END


:END
	echo.
	echo.


:FINALIZE


	
:EXIT
	exit /b


:TEXT1
SYNTAX

	7unzip
	
	* this is intented to be used as a drop-target


:TEXT2
CATCH#

	ERRORLEVEL was > 0

: