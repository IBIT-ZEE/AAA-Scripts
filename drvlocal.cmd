@echo off
cls

if "%2"=="" goto MESSAGE1

echo ligar o drive [%1] ao percurso [ %2 ]
subst %1 %2
explorer.exe /e,/root,%1
goto END

:MESSAGE1
echo sintaxe : drvlocal «drive» «path» «password»


pause
:END
echo.
echo.


