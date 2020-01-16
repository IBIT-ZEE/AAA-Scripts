@Echo Off
:Loop
Cls
%DrvPri%
echo [0m
echo   [43;37m ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ [0m
echo   [43;37m ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³ [0m
echo   [43;37m ³ °°[47;30m IBIT Ä Inform tica, Bur¢tica e Inova‡Æo Tecnol¢gica ÉÍÍÍÍÍÍÍÍÍÍ» [37;43m°° ³ [0m
echo   [43;37m ³ °°[47;30m Av. das For‡as Armadas, 155 r/c                     º    /\    º [37;43m°° ³ [0m
echo   [43;37m ³ °°[47;30m Apartado 228                                        º  /_\/_\  º [37;43m°° ³ [0m
echo   [43;37m ³ °°[47;30m 4820 Fafe                     Tel/Ctr (053) 599 777 º ÄÍÍÍÍÍÍÄ º [37;43m°° ³ [0m
echo   [43;37m ³ °°[47;30m                               Tel/Mdm (053) 599 555 º ArteWare º [37;43m°° ³ [0m
echo   [43;37m ³ °°[47;30m ibit@mail.telepac.pt          Fax/Tel (053) 599 898 ÈÍÍÍÍÍÍÍÍÍÍ¼ [37;43m°° ³ [0m
echo   [43;37m ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³ [0m
echo   [43;37m ³ °°±±±±±±±±±±±±±°°[46;30m ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ [37;43m°°±±±±±±±±±±±±±°° ³ [0m
echo   [43;37m ³ °°±±²²²²²²²²²±±°°[46;30m ³ 1 [A] : Aplica‡äes             º [37;43m°°±±²²²²²²²²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²ÛßßßÛ²²±±°°[46;30m ³ 2 [B] : Especifico             º [37;43m°°±±²²ÛßßßÛ²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²ÛßÜßÛ²²±±°°[46;30m ³ 3 [C] : Partilhado             º [37;43m°°±±²²ÛßÜßÛ²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²Û I Û²²±±°°[46;30m ³ 4 [U] : Utilit rios            º [37;43m°°±±²²Û I Û²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²Û B Û²²±±°°[46;30m ³ 5 [E] : Editor                 º [37;43m°°±±²²Û B Û²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²Û I Û²²±±°°[46;30m ³ 6 [R] : Rede                   º [37;43m°°±±²²Û I Û²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²Û T Û²²±±°°[46;30m ³ 7 [J] : Jogos                  º [37;43m°°±±²²Û T Û²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²ÛÜßÜÛ²²±±°°[46;30m ³ 8 [S] : Sistema                º [37;43m°°±±²²ÛÜßÜÛ²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²ÛÜÜÜÛ²²±±°°[46;30m ³ 9 [W] : Windows                º [37;43m°°±±²²ÛÜÜÜÛ²²±±°° ³ [0m
echo   [43;37m ³ °°±±²²²²²²²²²±±°°[46;30m ³ 0 [U] : Linha de Comandos      º [37;43m°°±±²²²²²²²²²±±°° ³ [0m
echo   [43;37m ³ °°±±±±±±±±±±±±±°°[46;30m ÀÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ [37;43m°°±±±±±±±±±±±±±°° ³ [0m
echo   [43;37m ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³ [0m
echo   [43;37m ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ [0m
Ask "Op‡„o : ",1A2B3C4U5E6R7J8S9W0U_
if ErrorLevel 21 goto End

if ErrorLevel  1 if Not ErrorLevel  3 Call IBIT-Apl
if ErrorLevel  3 if Not ErrorLevel  5 Call IBIT-Wrk
if ErrorLevel  5 if Not ErrorLevel  7 Call IBIT-Apr
if ErrorLevel  7 if Not ErrorLevel  9 Call IBIT-Utl
if ErrorLevel  9 if Not ErrorLevel 11 Call Editor \
if ErrorLevel 11 if Not ErrorLevel 13 Call IBIT-Net
if ErrorLevel 13 if Not ErrorLevel 15 Call IBIT-Fun
if ErrorLevel 15 if Not ErrorLevel 17 Call IBIT-Sys
if ErrorLevel 17 if Not ErrorLevel 19 Call Windows
if ErrorLevel 19 if Not ErrorLevel 21 Call Sistema

if ErrorLevel  1 Call ErrMsg
goto Loop

:End
CLS
Call IBIT_log
echo Digite IBIT ou a tecla ®F9¯ para voltar ao modo assistido.
echo.
echo.
