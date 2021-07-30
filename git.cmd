@if "%~1"=="" ( 
	aaa-message   ^
		"Use:"    ^
		""        ^
		"	git-" ^
		""        ^
		"	-or-" ^
		""        ^
		"	git <...>"
	) else ( 
	c:\apl\Git64\bin\git.exe %* 
	)