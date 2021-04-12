:: Clip-&-Show on command-line with secure "~" ...
:: no AAA-Main, for internal use on scripts

:MAIN
	@echo off
	if '%~1'=='' goto CATCH1

	echo ~~ %*|clip

	echo,
	echo,
	echo 	Clipboard now contains:
	echo,
	echo 	~~ %*
	
	goto :END

	
:CATCH1
	Call IBIT-Log %0 %*

	echo 	'''' ^<data^> 
	echo,
	echo 	Clipboard ^<data^> and message to command-line secured with "~~" dummy...
	echo 	so you can paste immediatly on command line without side effects.
	echo,
	echo 	no AAA Logo/Cleanup/Sibling-detection
	echo 	for use inside scripts

:END
	echo,
	echo,
