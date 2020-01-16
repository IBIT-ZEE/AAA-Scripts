Call IBITLogo

if "%1"=="" goto MSG_SYNTAX

set fname=%1
if not "%2"=="" set fname=%2\%fname%
if not "%3"=="" set fname=%3%fname%
if "%4"=="/t" set ftime=%date%-%time%

if not exist %fname% goto MSG_NOFILE

:MAIN
  xcopy /d %fname% "\xxx\!!!!baks%2\%ftime% %1"
goto END:


:MSG_SYNTAX
  echo Update files to "[BAKS]/path/file" with time instance option
  echo.
  echo.
  echo UpdFile 'file' ['\dir' ['drive'] [/t]]]
goto END

:MSG_NOFILE
  echo %fname% não encontrado
got END

:END
  echo.
  echo.