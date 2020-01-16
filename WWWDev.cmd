:ENTRY
	CALL IBIT_LOG


:INITIALIZE
	

:BEGIN


:MAIN
	cd C:\dat\WebDev
	start "" C:\APL\!TOOLS\_filesystem\_EXPLORE\Explorer++\Explorer++x32.exe C:\dat\WebDev C:\dat\WebDev\AAA C:\dat\WebDev\AAAX
	start "" C:\APL\!TOOLS\_applets\SublimeText\sublime_text.exe
	start "" C:\APL\Google\Chrome\chrome.exe http://localhost
	goto END


:ERR_SYNTAX
	echo ERR***
	goto END
	
:END
	echo. 
	echo.

:FINALIZE

	
:EXIT



