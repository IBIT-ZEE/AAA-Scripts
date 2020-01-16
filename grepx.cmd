Call AAA-Log %0 %*

:MAIN
	setlocal

	set aavTemp=%1
	Shift

	%1 %2 %3 %4 %5 %6 %7 %8 %9 | grep -i %aavTemp%

	endlocal


:END
echo, 
echo,
