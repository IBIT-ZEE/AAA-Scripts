:ENTRY
	CALL AAA-Log %0 %*
	if "%1"=="" goto ERR_SYNTAX


:INITIALIZE


:BEGIN
	setlocal
	set xEntity=%aaaEntities%\%~1

	
:MAIN
	if NOT exist %xEntity% goto :ERR_NOFOLDER
	
	start "%~1" %xEntity%
	goto END

	
:ERR_SYNTAX
	echo Syntax: entidades$ ^<entidade^>
	goto END
	
:ERR_NOFOLDER
	echo A pasta da Entidade ^<%1^> nao existe...
	echo A Listar %aaaEntities%\*%~1*
	echo,
	echo,
	dir /b %aaaEntities%\*%~1*
	goto END

:END
	endlocal
	echo,
	echo,

:FINALIZE
	timeout 60

	
:EXIT



