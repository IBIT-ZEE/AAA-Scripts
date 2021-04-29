:: Loop a set of commands with a optional timeout (default is 5 seconds)...

call AAA-Log %0 %*


if "%~1"=="" aaa-message ^
	"AAA-Loop <commands-to-loop>" ^
	"" ^
	"Loop a set of commands with a optional timeout," ^
	"uses AAA-Timeout (%aaa-timeout% seconds) for default delay..."

:: prevent AAA context fault
if NOT defined aaa-timeout set aaa-timeout = 5

:MAIN
	for /L %%f in () do ( %* & %windir%\system32\Timeout.exe %aaa-Timeout% )



