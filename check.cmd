
Call AAA-Log %0 %*

:INIT
	setlocal
	if "%1"=="" AAA-Message "Use:" "" "Check <host>"
	
	set xHost=%1
	set xWait=5
	set xLoop=2
	set xLoopX=10
	

:MAIN
	echo round %xLoop%...
	ping -n 1 %1 ^
		&& Call nircmd.cmd speak text "Host %xHost% is UP!" ^
		|| Call nircmd.cmd speak text "Host %xHost% is DOWN!"
	
	set /a xLoop -= 1
	if %xLoop%==0 goto :FINAL
	
	Timeout %xWait%
	
	
	goto :MAIN



:FINAL
	Call nircmd.cmd speak text "End of check for host %xHost%..."


:END
	endlocal
	echo,
	echo,