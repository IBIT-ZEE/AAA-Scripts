Call IBITLogo

if "%1"=="" goto MSG_SYNTAX

set fname=%1
if not "%2"=="" set fname=%2\%fname%
if "%3"=="/t" set ftime=%date%-%time%

if not exist %fname% goto MSG_NOFILE

:MAIN
  xcopy /d %fname% "\xxx\!!!!baks\%ftime% %1"
goto END:


:MSG_SYNTAX
  echo Update directory & subdirectories to "[BAKS]/path" with time instance option
  echo.
  echo.
  echo UpdDir 'dir' ['drive'] [/t]
goto END

:MSG_NOFILE
  echo %fname% não encontrado
got END

:END
  echo.
  echo.