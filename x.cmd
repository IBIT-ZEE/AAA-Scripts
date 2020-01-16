Call AAA-Log %0


:MAIN
	Call :F0 %0 & echo EL=%errorlevel% & echo.
	Call :F1 %* & echo EL=%errorlevel% & echo.
	Call :F2 %1 & echo EL=%errorlevel% & echo. & shift
	Call :F3 %1 & echo EL=%errorlevel% & echo. & shift

	echo *END-OF-CALLS*
	goto :END

:F0
	echo F0 executing... called with %%0
	echo parms %0
	exit /b 0;

:F1
	echo F1 executing... called with %%*
	echo parms %*
	exit /b 1;

:F2
	echo F2 executing... called with %%1 then shifted
	echo parms %*
	exit /b 2;

:F3
	echo F3 executing... called with %%1 then shifted
	echo parms %*
	exit /b 3;


:END
	echo.
	echo.