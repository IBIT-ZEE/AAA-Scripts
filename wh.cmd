Call aaa-log %~0 %*

if "%~1"=="" aaa-message "wh <filename>" "" "No filename specified"

:MAIN
	echo Where...
	Where.exe %1
	echo,
	echo,

	echo Which... (using Cygwin or GNU which ?@CLI!)
	:: dont call if ALIAS Which.cmd is on
	c:\APL\Cygwin64\bin\which.exe %1
	echo,
	echo,

	if %errorlevel%==1 goto :END
	
	:: ?AUTO-CLIPBOARD it??
	:: Where %1 | clip

:END
	echo,
	echo,

