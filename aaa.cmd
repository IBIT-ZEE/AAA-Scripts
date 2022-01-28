
:MAIN
	@echo off
	call AAA-Obs %0
	call aaa-vars    CHECK
	call aaa-options PROMPT
	exit /b


:OBS
	AAA Optional configurations

		. AAA-Vars   CHECK
		. AAA-Option PROMPT

	
	* use OMP for OhMyPosh/git information


