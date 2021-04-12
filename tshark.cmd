
:ENTRY
	if "%1"=="" AAA-Obs %0


:MAIN
	AAA-LogX C:\APL\!TOOLS\_network\_MONITOR\Wireshark64\tshark.exe %* --print --color
	exit /b


:OBS

	TShark 
	
	* syntax is very similar to tcpdump
	* AND/OR/NOT logical operators alowed
	* Alias+Help for Wireshark:TShark.exe

	-i specify interface name or number
	-T specify that we want to extract fields 
	-e identify which fields we want to extract
	-f filter in Wireshark format

	-? __________ more detailed help
	-D __________ display available interfaces (-D)
	-i <n> ______ interface to capture from
	-i <name> ___
	
	UDP ____ -f UDP
	DNS ____ -f DNS
	FTP ____ -f HTTP
	HTTP ___
	TFTP ___
	
	// att*** case sensitive
	-w <file.cap>   --> capture to file
	-r <file.pcap>  --> view captured file
	-V frame.number == 1
	-Y "ip.addr == 10.0.0.113

	???
	-r file.pcap
	-i LAN1 -w file.pcap
	-i LAN1 -Y http.request -T fields -e http.host -e http.user_agent
	-i LAN1 -f "src port 53" -n -T fields -e dns.qry.name -e dns.resp.addr
	
	SAMPLES
	TShark --color --print -i LAN1 -f "port 80" 
	TShark --color --print -i LAN1 -f "src port 53" 
	TShark --color --print -i LAN1 -f "port 53 or port 67" 
	
:
