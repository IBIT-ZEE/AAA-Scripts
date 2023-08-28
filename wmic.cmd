call AAA-Log %0 %*
:MAIN
	if "%1"=="" ( AAA-Obs %0 )
	exit /b


:OBS
>wmic.exe
>wmi-


	* Umbrella cap for WMIC.exe


//// SAMPLES
/// =========

//
wmic.exe process where (handle = 4) get * /format:value
wmic.exe process where (handle != 0 ) get * /format:value


// Process-list.cmd
wmic
    process
        where (name like '%%%~1%%' )
        get processid,name,sessionid,status
        /format:table


// // Process-list.cmd ~> ignore something...
wmic
    process
      where (caption!='WMIC.exe' AND commandline like '%%%~1%%' )
      get processid,priority,name,sessionid,status
      /format:table
