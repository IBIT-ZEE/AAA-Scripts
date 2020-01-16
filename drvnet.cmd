@echo off
cls

if "%2"=="" goto MESSAGE1

echo ligar o drive [%1] ao percurso [ %2 ] com a password [ %3 ]
pause
net use %1 %2 %3 /yes
explorer.exe /e,/root,%1
goto END

:MESSAGE1
echo sintaxe : drvnet «drive» «path» «password»


:END
echo.
echo.


