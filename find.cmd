@echo off
if "%~1"=="/?" AAA-Obs %0

:BEGIN
	setlocal

	if NOT "%~2"=="" ( 
		if exist "%~2" ( 
			set x=%2\*%1* 
			) else ( 
			AAA-Message "Path not existent:" "" "%2" 
			)
		) else (
		set x="*%~1*"
		)

:MAIN
	@echo off
	
	set VK_TAB=	
	for %%f in ( %x% ) do @( echo %%~tf ^| %%~af ^| %%~zf%VK_TAB% ^| %%~xf ^| %%~nf )


:END
	echo,
	echo,
	endlocal
	exit /b


:OBS

		ls /?
		ls [ <filter> [path] ]

		ls x
		ls lan \dat\aaa
		ls www %AAA-Data%


