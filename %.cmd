:ENTRY
call AAA-LOG %*


:INITIALIZE
	if "%1"=="" goto :ERR_SYNTAX


:MAIN
	:: %*
	start /b "%*" %*
	goto END


:ERR_SYNTAX
	Call aaa-message ^
		"%% <command-list>"^
		""^
		"* can use:"^
		"& command separator"^
		"( <block-enclosers> )"


:END
	echo,
	echo,


:FINALIZE
 

:EXIT

