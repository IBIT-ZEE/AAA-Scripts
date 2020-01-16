Call IBIT_Log %0 %*


:INIT
	grep -Poz "^:MENU1\K[\w\W]*?(?=:)" %~f0

	
:MAIN
	set /p aavTemp="Option... "
	if %aavTemp%==0 goto :END
	if %aavTemp%==1 goto :OPT_1
	if %aavTemp%==2 goto :OPT_2
	if %aavTemp%==3 goto :OPT_3

	goto :MAIN


:OPT_1
	start "" "http://pinkreef.pt"
	goto END

	
:OPT_2
	start "" "http://pinkreef.pt/cpanel"
	goto END


:OPT_3
	start "" "http://pinkreef.pt/webmail"
	goto END


:END
	exit /b

	
:MENU1
OPTIONS

	1. public ____ public page
	2. admin _____ administration site
	3. webmail ___ webmail site

	0. exit


:SYNTAX
! opt1, ... :



:ERROR1
Error #1, blah... blah.. blah...
Please do ...


:ERROR2
Error #2 ...


