call AAA-Log %0 %*

:MAIN 
	if "%1"=="" ( AAA-Obs %0 )
	
	start "Bing-Search" http://www.bing.com/search?q=%*
	exit /b


:OBS
>bing-
>google-
>wikipedia-

	bing <text-to-find>

	* find in bing/msn search engine for the keywords
