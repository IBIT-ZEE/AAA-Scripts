

:MAIN
	@echo off
	echo Result is now on clipboard...
	Where.exe %1
	Where.exe %1  | clip
	echo,
	echo,




