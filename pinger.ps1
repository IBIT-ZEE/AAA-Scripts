<#
AAA Pinger for LAN/WAN known hosts

	Pinger xId [xGo]

BRIEF/
	Open net-lan.dat/Data and filter by xID
	If xGo is present then ping the ID (lan/wan/...)


//
?argument for xID
?argument for ?should run??



#>


param( $xID=$null );


if ( !$xID ) { 
	aaa-alert( "Supply an id..." );
	sound-beep;
	exit;
	}

$xData = $aaa.Folders.Data + "\net-lan.dat"

$x = data-load ( $xData )
$xx = $x.id -match $xID


