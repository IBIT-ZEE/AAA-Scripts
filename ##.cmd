:ENTRY
	call ibit_log %0 %*


:INITIALIZE
	set aavAction=%1
	set aavObject=%2

	if not defined aavObject goto ERR_SYNTAX


:MAIN
	set x=%aavObject%%aavAction%
	if not exist %homedrive%\dat\#links\%x%.lnk goto ERR_ABSENT
	start "%x%" %x%
	goto END


:ERR_SYNTAX
	echo go ^<class^> ^<object^>
	echo.
	echo     Action makers
	echo         ! = Files
	echo         %% = Invoker
	echo         $ = Knowledgebase
	echo         # = Links/Shortcuts
	echo.
	echo examples:
	echo 	# ! xxx  // open XXX! or fail
	echo 	# % srt  // invoke srt% or fail
	goto :END


:ERR_ABSENT
	echo %x% definiton not exist in ^<#links^>
	goto :END


:END
	echo.
	echo.





:FINALIZE





:EXIT


