Call AAA-Log %0 %*


:INIT
	if "%~1"=="" (
		AAA-Message ^
			"Syntax:" "" "find <init-path> <arg1> ... <argN>" ^
			"" ^
			"find all argumented files below the supplied path..." ^
			"use . to indicate current folder."
			)


:MAIN
	for %%f in ( %2 %3 %4 %5 %6 %7 %8 %9 ) do ( 
		echo Finding %%f...
		dir /s/b %1\%%f* 
		echo,
		)

:END
	echo,
	echo,
