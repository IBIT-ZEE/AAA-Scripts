:: Clip data

:ENTRY
	Call AAA-Log %0 %*

:MAIN

	:: AAA-Main do not work because of (') interpretation
	if '%~1'=='' (
		grep -Poz "\n:OBS\K[\w\W]*?(?=\n:)" "%~dpn0.cmd"
		goto :END
		)

	echo %*|clip

	call aaa-message "Clipboard now contains:" "" %*
	goto :END


:END
	echo,
	echo,

:EXIT
	exit /b


:OBS
	' <data>
	
	Clipboard <data>
	
:





