if "%1"=="" Set DrvTmp=%DrvAux%
if Not "%1"=="" Set DrvTmp=%1

Call IBIT_Log
echo                         [46;30m��������������������������������Ŀ[0m
echo                         [46;30m� 1. Tam. m�ximo c/Verifica��o . �[0m
echo                         [46;30m� 2. Tam. m�ximo s/Verifica��o . �[0m
echo                         [46;30m� 3. (...) + Etiqueta .......... �[0m
echo                         [46;30m� 4. (...) + Aviso ............. �[0m
echo                         [46;30m� 5. (...) + Sistema Operativo . �[0m
echo                         [46;30m� 6. 5.25"  180 Kb ............. �[0m
echo                         [46;30m� 7. 5.25"  360 Kb ............. �[0m
echo                         [46;30m� 8. 5.25" 1220 Kb ............. �[0m
echo                         [46;30m� 9. 3.50"  720 Kb ............. �[0m
echo                         [46;30m� 0. 3.50" 1440 Kb ............. �[0m
echo                         [46;30m�                                �[0m
echo                         [46;30m� [+] Seguinte ���� [-] Anterior �[0m
echo                         [46;30m����������������������������������[0m
Ask "Formata��o no drive %DrvTmp%, Op��o: ",1234567890"-
if errorlevel 12 Goto End

Call IBIT_Log
Echo Introduza a diskette no drive %DrvTmp% e prima 'Enter'...
Echo.
Echo.
if errorlevel  1 if Not ErrorLevel  2 Format %DrvTmp% /v:%ID% /u
if errorlevel  2 if Not ErrorLevel  3 Format %DrvTmp% /v:%ID%
if errorlevel  3 if Not ErrorLevel  4 Format %DrvTmp% /V:
if errorlevel  4 if Not ErrorLevel  5 Format %DrvTmp% /v:%ID% /A
if errorlevel  5 if Not ErrorLevel  6 Format %DrvTmp% /v:%ID% /S
if errorlevel  6 if Not ErrorLevel  7 Format %DrvTmp% /v:%ID% /F:180
if errorlevel  7 if Not ErrorLevel  8 Format %DrvTmp% /v:%ID% /F:360
if errorlevel  8 if Not ErrorLevel  9 Format %DrvTmp% /v:%ID% /F:1.2
if errorlevel  9 if Not ErrorLevel 10 Format %DrvTmp% /v:%ID% /F:720
if errorlevel 10 if Not ErrorLevel 11 Format %DrvTmp% /v:%ID% /F:1.44
If ErrorLevel  1 Call ErrMsg

:End
Set DrvTmp=
Call ErrClr
echo.
echo.
