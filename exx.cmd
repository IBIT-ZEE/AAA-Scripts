

:MAIN
	@if "%~1"=="" (explorer.exe .) else (explorer.exe "search-ms:crumb=filename:%*")
	exit /b


:OBS
	search-ms:
		displayname=???												&
		crumb=filename:~~*???** OR System.Generic.String:*???**		&
		crumb=location:C:\Users\ZEEX