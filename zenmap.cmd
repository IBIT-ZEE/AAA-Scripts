if "%1"=="" ( %0 10.0.0.* )
start /b "ZenMap" c:\apl\!TOOLS\_NETWORK\_INSPECT\ZenMap\zenmap.exe -p "Ping Scan" -t %*
