@echo off
if "%~1"=="" AAA-Message "show file contents..." "" "binary copy to console"
echo,

copy /b %1 con >nul

echo,
