:: Clip-&-Edit on default editor...

Call AAA-Log %0 %*

if "%~1"=="" (
	echo 	''' ^<command^> 
	echo,
	echo 	Clipboard ^<data^> ^& Edit output... 
	echo,
	echo,
	exit /b
	)
	
%* 1> "%~dp0~.clip" 2>&1
edit "%~dp0~.clip"

