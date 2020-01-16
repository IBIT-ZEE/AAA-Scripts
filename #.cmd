:ENTRY
	call ibit_log %0 %*


:INITIALIZE
	setlocal
	:: if not defined aavObject goto ERR_SYNTAX


:MAIN

	:: if not exist %homedrive%\dat\#links\%x%.lnk goto ERR_ABSENT
	start "%x%" %x%
	goto END


:CATCH1
	:: no arguments
	grep -Poz "^:TEXT1\K[\w\W]*?(?=^:)" %~f0
	goto :END


:END
	echo.
	echo.
	endlocal
	exit /b


:FINALIZE


:EXIT



:TEXT0
	Ocurreu um erro

:TEXT1

	# ???
	
	
	examples:
		# ???


:TEXT2
	não encontrado como executavel nos percursos de pesquisa pre-difinidos...
:

