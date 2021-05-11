:: @start "PHP/Localhost/WWW" php-server.cmd c:\dat\www

@start "PHP/Localhost/WWW" c:\apl\php64\php.exe -S localhost:80 -t c:\dat\www
Timeout.exe 1

@start "%date%-%time%" microsoft-edge:http://localhost/AAAX/jquery.html
Timeout.exe 1

@start "%date%-%time%" microsoft-edge:http://localhost/AAAX/jquery-mobile
Timeout.exe 1

@start "%date%-%time%" microsoft-edge:http://localhost/AAAX/jquery-ui
Timeout.exe 1







