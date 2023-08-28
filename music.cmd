call AAA-Log %0 %*
:MAIN
	:: if "%1"=="" ( AAA-Obs %0 )
	Call AAA-Obs %0
	
	setlocal
	set x=D:\(audio) %%MP3
	
	start /b "" "%x%\Dvorak -classic- Anton\Antonin Dvorak - New World Symphony #9 in E Minor Opus 95 B178.mp3"  

	endlocal
	exit /b


:OBS
>?

	***2DO music 
	***ATT _space-in-label_ 

	D:\(audio) %MP3\
		Dvorak -classic- Anton\Antonin Dvorak - New World Symphony #9 in E Minor Opus 95 B178.mp3
	
	
