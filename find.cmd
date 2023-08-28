
:BEGIN
	@echo off
	if "%~1"=="" AAA-Obs %0


:MAIN
	setlocal
	
	if "%~2"=="" (
		set x=%cd%
		) else ( 
		if exist "%~2" ( 
			set x=%~f2
			) else ( 
			AAA-Message "%2  <~  Path not exist..." 
			)
		)

	set VK_TAB=	
	:: set xx=
	:: ERR*** %vars% not changing inside for-interaction
	:: echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf ^| %%~nf
	:: echo %%~nxf  -  %%~dpf
	for /R %x% %%f in ( *%1* ) do (
		echo %%~ff
		)


:END
	echo,
	echo,
	endlocal
	exit /b


:OBS
>dir
>ls
>tree

		find <filter> [path]
		
		* find the filter (wilcard aware ?*)
		* in argumented path (defaults to current folder)
		* and subfolders

		find *.??c
		find *.cmd
		find lan \dat\aaa


		ATT***
			ALPHA VERSION...
			listing not optimized 
			due to Windows Batch language quirks

