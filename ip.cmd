
:MAIN
	@echo off
	setlocal
	call AAA-Obs %0
	
	if not defined AAA-Data ( AAA-Message "AAA-Data is not defined..." )
	
	set x=LAN
	echo %x%
	call data-get %AAA-Data%\%x%.dat %1
	
	set x=WAN
	echo %x%
	call data-get %AAA-Data%\%x%.dat %1
	
	call AAA-MessageX

	endlocal	
	exit /b



:OBS
	LAN and WAN IPs
	***************
	
	Classes
	.......
	ip-
	dns-
	ddns-
	route-
	
	Examples
	........
	ip-list
	dns-list
	ddns-check
	route-interfaces


InterfaceIndex=14
IPAddress={"10.0.2.8"}
IPSubnet={"255.0.0.0"}
Description=TP-Link Gigabit PCI Express Adapter
DefaultIPGateway=
DHCPEnabled=FALSE
DNSHostName=ZEE-PC
IPEnabled=TRUE
MACAddress=7C:8B:CA:03:66:C7

ArpAlwaysSourceRoute=
ArpUseEtherSNAP=
Caption=[00000021] TP-Link Gigabit PCI Express Adapter
DatabasePath=%SystemRoot%\System32\drivers\etc
DeadGWDetectEnabled=
DefaultTOS=
DefaultTTL=
DHCPLeaseExpires=
DHCPLeaseObtained=
DHCPServer=
DNSDomain=
DNSDomainSuffixSearchOrder={}
DNSEnabledForWINSResolution=FALSE
DNSServerSearchOrder=
DomainDNSRegistrationEnabled=FALSE
ForwardBufferMemory=
FullDNSRegistrationEnabled=TRUE
GatewayCostMetric=
IGMPLevel=
IPConnectionMetric=25
IPFilterSecurityEnabled=FALSE
IPPortSecurityEnabled=
IPSecPermitIPProtocols={}
IPSecPermitTCPPorts={}
IPSecPermitUDPPorts={}
IPUseZeroBroadcast=
IPXAddress=
IPXEnabled=
IPXFrameType=
IPXMediaType=
IPXNetworkNumber=
IPXVirtualNetNumber=
KeepAliveInterval=
KeepAliveTime=
MTU=
NumForwardPackets=
PMTUBHDetectEnabled=
PMTUDiscoveryEnabled=
ServiceName=rt640x64
SettingID={6A7C2FD4-9364-4EA5-9ECC-4FF2912C0487}
TcpipNetbiosOptions=0
TcpMaxConnectRetransmissions=
TcpMaxDataRetransmissions=
TcpNumConnections=
TcpUseRFC1122UrgentPointer=
TcpWindowSize=
WINSEnableLMHostsLookup=TRUE
WINSHostLookupFile=
WINSPrimaryServer=
WINSScopeID=
WINSSecondaryServer=
