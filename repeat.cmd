:: Repeat a set of commands <n> times (default AAA-Repeat is 100)...

call AAA-Log %0 %*


if "%~1"=="" aaa-message ^
	"AAA-Repeat <commands-to-repeat>" ^
	"" ^
	"Loop a set of commands <n> times," ^
	"uses AAA-Repeat (%aaa-repeat%) for <n> times..."

:: prevent AAA context fault
if NOT defined aaa-repeat set aaa-repeat=100

:MAIN
	for /L %%f in (1,1,%aaa-repeat%) do %*





