

:MAIN
	@echo off

	if "%~1"=="" (
		Call AAA-Obs %0
		ls "*" %aaa-data%
		goto :END
		)

	if exist "%aaa-data%\%~1.dat" (
		start "%~1.dat" C:\APL\!TOOLS\_applets\Notepad++64\notepad++.exe "%aaa-data%\%~1.dat"
		) else (
		ls "%~1" %aaa-data%
		)

	goto :END


:END
	echo,
	echo,
	exit /b


:obs
	Fork:

	data <args...>   ___    *edit data file
	data-    ___________    *data actions/behaviours/properties/...
	...


	 /\------------------------/\
	<  > AAA/Data extensions: <  >
	 \/------------------------\/

Files on Data (%AAA-Data%)
==========================

