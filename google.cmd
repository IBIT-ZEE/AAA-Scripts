call AAA-Log %0 %*

:MAIN 
	if "%1"=="" ( AAA-Obs %0 )
	
	start "Google-Search" http://www.google.com/search?q=%*
	exit /b


:OBS
>google-
>bing-
>wikipedia

	google <text-to-find>

	* find in google search engine for the keywords
