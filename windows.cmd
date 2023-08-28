call AAA-Log %0 %*  


:MAIN
	if "%1"=="" ( AAA-Obs %0 ) 
	exit /b


:OBS
>Windows-
>System-
>OS-
>GUI-

	Windows

	<system32>\*.exe
	<system32>\*.msc
	<system32>\*.cpl
	
	msconfig.exe
	winver.exe
	UserAccountControlSettings.exe
	msinfo32.exe
	eventvwr.exe
	perfmon.exe
	perfmon.exe
	taskmgr.exe
	regedt32.exe ... Regdistry editor
	msra.exe ....... Remote assistance
	rstrui.exe ..... System restore
	+
	compmgmt.msc
	+
	appwiz.cpl
	inetcpl.cpl
	wscui.cpl
	control.exe /name Microsoft.Troubleshooting
	control.exe system
	+
	*Reliability
	
	// CLI
	systeminfo.exe
	ipconfig.exe
	

	
	
	
  
