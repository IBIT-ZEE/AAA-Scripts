@if "%~1"=="" ( 
	AAA-Message ^
		"Syntax:" ^
		"" ^
		"ps <filter>" ^
		"" ^
		"List running process and filter with string..."
	)

@tasklist | grep -i %*
