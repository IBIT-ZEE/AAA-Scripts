


:ENTRY
	setlocal

	Call IBIT-Log %0 %*
	
	set xExts=cmd ps1 py perl

	if "%1"=="" ( 
		AAA-Message ^
			"Use:" ^
			"" ^
			"Code <script>" ^
			"" ^
			"View code from scripts in AAA-Ecosystem..." ^
			"Code is aware of : .%xExts: =|.%"

		)
	
	if not defined AAA-Env ( AAA-Message "AAA-Vars missing, need AAA-Env..." )
	
	goto :END


:MAIN
	for %%f in ( %AAA-Scripts% %AAA-ScriptsX% %AAA-ScriptsXX% ) do (
		
		:: ?EXACT FILENAME !EXIT
		if exist %%f\%1 ( set x=%%f\%1 && goto :GO )

		:: ?AMBIGUITY RESOLVER
		for %%g in ( %xExts% ) do (
			if exist %%f\%1.%%g (  set x=%%f\%1.%%g && goto :GO )
			)
		)


	AAA-Message "" "Not found any script named :  %~1" "" "with any of the extensions : .%xExts: =/.%"
	pause
	:: goto :END


:GO
	:: C:\APL\!TOOLS\_APPLETS\Notepad++64\notepad++.exe %1
	Call AAA-Message %x%
	cat %x%
	goto :END


:END
	endlocal
	echo,
	echo,


