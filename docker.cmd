

:MAIN
	@echo off
	if "%~1"=="" ( AAA-Obs %0 )
	
	c:\APL\!TOOLS\____CLI\docker.exe %*
	exit /b


:Obs

	AAA/Fork for docker
	Official ClI/GUI
	extra tools and direct server access...
	
	Syntax:
	
		Docker-
	
		~or~

		Docker <args*...>


	Docker-* 
		will use AAA smart-scripts for Docker operations
		state is hardcode or maintained in AAA-*/Docker-* vars
	
	Docker
		will use the docker.exe directly 
		passing the supplied arguments


