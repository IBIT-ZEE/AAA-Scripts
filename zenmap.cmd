if "%1"=="" ( %0 10.0.0.* )
start /b "ZenMap" c:\apl\!TOOLS\AAA\binxx\ZenMap\zenmap.exe -p "Ping Scan" -t %*
