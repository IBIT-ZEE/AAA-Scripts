

:MAIN
	@echo off
	if /i not "%~1"=="" goto :%1
	AAA-Obs %0

:x
	@cd /d %USERPROFILE%\xx\c++
	vs.cmd x.sln
	goto :END

:WWW
	edge-url https://www.youtube.com/watch?v=18c3MTX0PK0&list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb
	goto :END

:YT
	edge-url https://www.youtube.com/watch?v=18c3MTX0PK0&list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb
	goto :END

:END
	echo,
	echo,
	exit /b


:OBS
>VS-*

	Processor:

		! ..... Binaries folder
		!! .... Code/data folder
		!!! ... Other code/data folder
		$ ..... C++ Knowledgebase
		x ..... C++/VS loaded with xx!/x.sln
		
		CLI ... MS-VS CLI/Toolset environment...
		WWW ... C++ -at- Internet
		YT .... C++ -at- Youtube
		


