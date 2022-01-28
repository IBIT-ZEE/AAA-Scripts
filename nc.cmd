
:MAIN
	@echo off
	
	if "%~1"=="" AAA-Obs %0
	
	c:\apl\!TOOLS\____CLI\nc64.exe %*
	exit /b


:OBS
	NetCat/AAA mod
	* port numbers can be individual or ranges: m-n
	* http://eternallybored.org/misc/netcat v1.12/NT
	
	// CONNECT
	nc [-options] hostname port[s] [ports] ...
	
	// LISTEN
	nc -l -p port [options] [hostname] [port]
		-d	detach from console, background mode
		-h	help
		-l	listen mode
		-L	listen harder, re-listen on socket close
		-n	numeric-only IP addresses, no DNS
		-r	randomize local and remote ports
		-t	answer TELNET negotiation
		-c	send CRLF instead of just LF
		-u	UDP mode
		-v	verbose
		-vv	more verbose
		-z	zero-I/O mode (for scanning)
		
		-e	<prog> ...... inbound program to exec [dangerous!!]
		-g	<gateway> ... source-routing hop point[s], up to 8
		-G	<num> ....... source-routing pointer: 4, 8, 12, ...
		-i	<secs> ...... delay interval for lines sent, ports scanned
		-o	<file> ...... hex dump of traffic
		-p	<port> ...... local port number
		-s	<addr> ...... local source address
		-w	<secs> ...... timeout for connects and final net reads

