
:MAIN
	@echo off
	if "%~1"=="" AAA-Obs %0
	goto :%1
	
	:: no arguments consumed... then recall  plain,,,
	%~f0


:PROMPT
	call aaa-vars    CHECK
	call aaa-options PROMPT
	goto :END


:END
	echo,
	echo,
	exit /b


:OBS
>wsl-
>linux-
>docker-

	Linux

		$ ..... linux$
		wsl ... enhance console prompt
		
		kali ... VM kali
		...

