:ENTRY
	setlocal
	CALL IBIT_LOG %0 %*
	if "%~1"=="" goto :MAIN
	goto :MAINX

	
:INITIALIZE
	:: prompt ^> 
	:: set aavShell=0
	:: call !isShell.cmd
	:: if errorlevel 1 set aavShell=1
	:: if %aavShell%==1 mode con lines=8 cols=64


:BEGIN


:MAIN
	grep -Poz "^:TEXT1\K[\w\W]*?(?=^:$)" %~f0
	if ERRORLEVEL 1 goto :CATCH0
	goto :END


:MAINX
	C:\APL\!TOOLS\_network\_INSPECT\Wireshark64\tshark.exe %*
	goto :END

	
:CATCH0
	:: catch no GREP or other command error
	grep -Poz "^:TEXT0\K[\w\W]*?(?=^:$)" %~f0
	echo ERRORLEVEL%errorlevel% ~ %date% * %time% ~ %cd%
	Timeout 60
	goto END


:CATCH1
	:: help syntax/*comments/etc.
	grep -Poz "^:TEXT1\K[\w\W]*?(?=^:$)" %~f0
	Timeout 60
	goto END

:CATCH2
	:: exception setting ERRORLEVEL
	grep -Poz "^:TEXT2\K[\w\W]*?(?=^:$)" %~f0
	:: return errorlevel1=file-not-in-path
	set aavErrorlevel=1
	goto END


:END
	echo. 
	echo.


:FINALIZE

	
:EXIT
	endlocal
	exit /b



:TEXT0

	An error has occured


:TEXT1

	TShark 
	* syntax is very similar to tcpdump
	* AND/OR/NOT logical operators alowed
	* Alias+Help for Wireshark:TShark.exe

	-i specify interface name or number
	-T specify that we want to extract fields 
	-e identify which fields we want to extract

	-? __________ more detailed help
	-D __________ display available interfaces (-D)
	-i <n> ______ interface to capture from
	-i <name> ___
	
	UDP ____ -f "udp"
	DNS ____ -f DNS
	FTP ____ -f HTTP
	HTTP ___
	TFTP ___
	
	<port> ___ -f "src port ??"

	// att*** case sensitive
	-f "usp"
	-f "port 53"
	-f "port 53 or port 67"
	-w <file.cap>   --> capture to file
	-r <file.pcap>  --> view captured file
	-V frame.number == 1
	-Y "ip.addr == 10.0.0.113

	???
	-i LAN1 -w file.pcap
	-r file.pcap
	-i LAN1 -Y http.request -T fields -e http.host -e http.user_agent
	-i LAN1 -f "src port 53"
	-i LAN1 -f "src port 53" -n -T fields -e dns.qry.name -e dns.resp.addr

:
