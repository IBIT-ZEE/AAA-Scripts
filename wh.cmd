Call aaa-log %~0 %*

if "%~1"=="" aaa-message "wh <filename>" "" "No filename specified"

:MAIN
	echo Where...
	Where %1
	echo,
	echo,

	echo Which...
	Which %1
	echo,
	echo,

	if %errorlevel%==1 goto :END
	
	:: Where %1 | clip

:END
	echo,
	echo,

