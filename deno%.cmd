Call AAA-Log %* %0

:: start "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://deno.land/std


net stop w3svc
start /b "%date% ~ %time%" "C:\APL\Microsoft\Code64\Code.exe" c:\dat\deno

start microsoft-edge:http://deno.land/std
ping deno.land

start microsoft-edge:http://localhost
ping localhost



