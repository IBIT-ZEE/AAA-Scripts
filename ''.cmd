:: Clip output from command

:ENTRY
	Call AAA-Log %0 %*

:MAIN

	:: AAA-Main do not work because of (') interpretation
	if '%~1'=='' (
		grep -Poz "\n:OBS\K[\w\W]*?(?=\n:)" "%~dpn0.cmd"
		goto :END
		)

	%*|clip

	:: call aaa-message "Clipboard now contains the output of:" "" "%*^"
	
	goto :END


:END
	echo,
	echo,

	
:EXIT
	exit /b


:OBS
	'' <command> 
	
	to Clip <output> from command
:

