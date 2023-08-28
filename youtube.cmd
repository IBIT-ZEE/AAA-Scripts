call AAA-Log %0 %*  


:MAIN
	if "%1"=="" (
		call AAA-Obs %0	
		:: if defined YOUTUBE echo %YOUTUBE%
		echo 	^<0^>%YOUTUBE%
		exit /b
		)

	goto :%1
	
	exit /b 


:GO
	edge youtube.com
	exit /b


:MP3
	exit /b


:MP4
	exit /b


:TEST
	call :_CHECK youtube
	if errorlevel 1 echo ERROR
	echo Variable exists...
	exit /b

:GET
	echo getting default...
	exit /b


:SET
	echo setting default...
	exit /b


:_CHECK
	if DEFINED %1 exit /b 0
	
	call AAA-Message "Parametro 0 não definido..."
	exit /b 1



:OBS
>youtube-


	Youtube
	
	* leverages py/youtube_dl
	
	GO ......... launch WWW/youtube
	MP3 ........ download as mp3
	MP4 ........ download as mp4
	FORMATS ....
	PLAYLIST ...
	
	GET ........ get default argument %YOUTUBE%
	SET ........ set default argument %YOUTUBE%
	CLEAR ...... clear defined parameters
	TEST ....... tests