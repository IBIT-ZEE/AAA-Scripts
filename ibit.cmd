@Echo Off
:Loop
Cls
%DrvPri%
echo.
echo  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo  ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³
echo  ³ °°IBIT Ä Inform tica, Bur¢tica e Inova‡Æo Tecnol¢gica       ÉÍÍÍÍÍÍÍÍÍÍ»°° ³
echo  ³ °°Av. das For‡as Armadas, 155 r/c                           º    /\    º°° ³
echo  ³ °°Apartado 228                                              º  /_\/_\  º°° ³
echo  ³ °°4820 Fafe                             Tel/Ctr 253 599 999 º ÄÍÍÍÍÍÍÄ º°° ³
echo  ³ °°                                      Dat/Tel 253 599 777 º ArteWare º°° ³
echo  ³ °°ibit@mail.telepac.pt                  Fax/Dat 253 599 898 ÈÍÍÍÍÍÍÍÍÍÍ¼°° ³
echo  ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³
echo  ³ °°±±±±±±±±±±±±±°° ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ °°±±±±±±±±±±±±±°° ³
echo  ³ °°±±²²²²²²²²²±±°° ³[1] Aplica‡äes   ³³[A] Aplica‡äes   ³ °°±±²²²²²²²²²±±°° ³
echo  ³ °°±±²²ÛßßßÛ²²±±°° ³[2]              ³³[B] Backups      ³ °°±±²²ÛßßßÛ²²±±°° ³
echo  ³ °°±±²²ÛßÜßÛ²²±±°° ³[3]              ³³[C]              ³ °°±±²²ÛßÜßÛ²²±±°° ³
echo  ³ °°±±²²Û I Û²²±±°° ³[4]              ³³[D]              ³ °°±±²²Û I Û²²±±°° ³
echo  ³ °°±±²²Û B Û²²±±°° ³[5]              ³³[E] Editor       ³ °°±±²²Û B Û²²±±°° ³
echo  ³ °°±±²²Û I Û²²±±°° ³[6]              ³³[F]              ³ °°±±²²Û I Û²²±±°° ³
echo  ³ °°±±²²Û T Û²²±±°° ³[7] Jogos        ³³[G]              ³ °°±±²²Û T Û²²±±°° ³
echo  ³ °°±±²²ÛÜßÜÛ²²±±°° ³[8]              ³³[H]              ³ °°±±²²ÛÜßÜÛ²²±±°° ³
echo  ³ °°±±²²ÛÜÜÜÛ²²±±°° ³[9] Utilit rios  ³³[I]              ³ °°±±²²ÛÜÜÜÛ²²±±°° ³
echo  ³ °°±±²²²²²²²²²±±°° ³[0] DOS          ³³[ ]              ³ °°±±²²²²²²²²²±±°° ³
echo  ³ °°±±±±±±±±±±±±±°° ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ °°±±±±±±±±±±±±±°° ³
echo  ³ °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° ³
echo  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Ask "Op‡„o : ",1234567890ABCDEFGHIJ_
if ErrorLevel 21 goto End

if ErrorLevel  1 if Not ErrorLevel  2 Call IBIT-Apl
if ErrorLevel  2 if Not ErrorLevel  3 Call IBIT-Wrk
if ErrorLevel  3 if Not ErrorLevel  4 Call IBIT-Apr
if ErrorLevel  4 if Not ErrorLevel  5 Call IBIT-Utl
if ErrorLevel  5 if Not ErrorLevel  6 Call
if ErrorLevel  6 if Not ErrorLevel  7 Call IBIT-Net
if ErrorLevel  7 if Not ErrorLevel  8 Call IBIT-Fun
if ErrorLevel  8 if Not ErrorLevel  9 Call IBIT-Sys
if ErrorLevel  9 if Not ErrorLevel 10 Call Windows
if ErrorLevel 10 if Not ErrorLevel 11 Call Sistema
if ErrorLevel 11 if Not ErrorLevel 12 Call Sistema
if ErrorLevel 12 if Not ErrorLevel 13 Call IBIT-Bak
if ErrorLevel 13 if Not ErrorLevel 14 Call
if ErrorLevel 14 if Not ErrorLevel 15 Call
if ErrorLevel 15 if Not ErrorLevel 16 Call E
if ErrorLevel 16 if Not ErrorLevel 17 Call
if ErrorLevel 17 if Not ErrorLevel 18 Call
if ErrorLevel 18 if Not ErrorLevel 19 Call
if ErrorLevel 19 if Not ErrorLevel 20 Call
if ErrorLevel 20 if Not ErrorLevel 21 Call
if ErrorLevel 21 if Not ErrorLevel 22 Call





if ErrorLevel  1 Call IBIT-Err
goto Loop

:End
CLS
Call IBITlogo
echo Digite IBIT ou a tecla ®F9¯ para voltar ao modo assistido.
echo.
echo.
