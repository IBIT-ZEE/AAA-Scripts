call AAA-Log %0 %*


:MAIN
	:: if "%~1"=="" ( AAA-Obs %0 )
	if "%~1"=="-?" ( AAA-Obs %0 )

	echo Alerting Timeout...
	
	setlocal
	
	set xTime=%AAA-Timeout%
	if NOT "%~2"=="" set xTime=%2
	set xMsg1="Counting down %xTime% seconds..."
	if NOT "%~1"=="" set xMsg1="%~1"
	set xMsg2="%xTime% seconds elapsed..."
	
	wscript c:\dat\WSH\say.js %xMsg1%
	Timeout %xTime%
	wscript c:\dat\WSH\say.js %xMsg2%
	
	endlocal
	
	exit /b


:OBS
>say

	Syntax:
	
		Alert ~message ~timeout
	
	
	Sound/Voice alert...
	
