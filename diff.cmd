Call IBITLogo



:MAIN
	echo use DIFFDIR ____ to COMPARE directories
	echo use DIFFFILE ___ to COMPARE files

	echo.
	echo.
	set /p aao0="Prima ENTER para ver ajuda sobre DIFFDIR..."

	call diffdir

	echo.
	echo.
	set /p aao0="Prima ENTER para ver ajuda sobre DIFFFILE..."

	call difffile

goto END



:END
	echo.
	echo.
