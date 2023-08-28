call AAA-Log %0 %*


:MAIN
	if "%~1"==""   ( AAA-Obs %0 )
	if "%~1"=="-?" ( C:\APL\nim64\bin\nim.exe & goto :END )
	if "%~1"=="-!" ( goto :SET )
	echo %1

	C:\APL\nim64\bin\nim.exe %*

	goto :END


:SET
	:: paths for Nim and MSVS-CPP64...
	:: path=%path%;C:\APL\nim64\bin
	:: path=%path%;%USERPROFILE%\.nimble\bin
	:: call VS-CPP

	echo Setting paths for Nim/MinGW64...
	echo,
	if /i "%path%"=="%path:;C:\APL\GNU\mingw64\bin=%" ( 
		set path=%path%;C:\APL\GNU\mingw64\bin
		)

	if /i "%path%"=="%path:;C:\APL\nim64\bin=%" ( 
		set path=%path%;C:\APL\nim64\bin
		)

	:: QUIRK*** not work... cannot use %var% inside %var% for replace-test
	:: this segment will continuously be added for each call
	if /i "%path%"=="%path:;%USERPROFILE%\.nimble\bin=%" ( 
		set path=%path%;%USERPROFILE%\.nimble\bin
		)

	goto :END


:END
	echo,
	echo,
	exit /b


:OBS
>nim.cmd
>nim!


	Syntax:
	
		nim <params...>

	-? ... for Nim default command line help	
	-! ... setup nim environment for C++ compiler


	Samples:
	--------
		nim -?
		nim -!

		nim c x.nim
		nim c --cc:vcc x.nim
		nim c --listcmd x.nim
