call AAA-Log %0 %*


:MAIN
	if "%1"=="" ( AAA-Obs %0 )
	if NOT exist %USERPROFILE%\xx\%1\. (
		echo %1 não existe...
		echo,
		echo,
		echo set content in %USERPROFILE%\xx
		echo ========================================
		dir /b %USERPROFILE%\xx
		goto :END
		)
	
	cd   /d %USERPROFILE%\xx\%1\.
	dir  /b
	goto :END


:END
	echo,
	exit /b

:OBS
>x  

	Syntax: xx <~folder>

	* move context to ~/xx/<sub-folder>
