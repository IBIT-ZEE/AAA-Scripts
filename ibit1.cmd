@Echo Off
:Loop
Cls
%DrvPri%
echo [0m
echo   [43;37m ������������������������������������������������������������������������Ŀ [0m
echo   [43;37m � ���������������������������������������������������������������������� � [0m
echo   [43;37m � ��[47;30m IBIT � Inform�tica, Bur�tica e Inova��o Tecnol�gica ����������ͻ [37;43m�� � [0m
echo   [43;37m � ��[47;30m Av. das For�as Armadas, 155 r/c                     �    /\    � [37;43m�� � [0m
echo   [43;37m � ��[47;30m Apartado 228                                        �  /_\/_\  � [37;43m�� � [0m
echo   [43;37m � ��[47;30m 4820 Fafe                     Tel/Ctr (053) 599 777 � �������� � [37;43m�� � [0m
echo   [43;37m � ��[47;30m                               Tel/Mdm (053) 599 555 � ArteWare � [37;43m�� � [0m
echo   [43;37m � ��[47;30m ibit@mail.telepac.pt          Fax/Tel (053) 599 898 ����������ͼ [37;43m�� � [0m
echo   [43;37m � ���������������������������������������������������������������������� � [0m
echo   [43;37m � �����������������[46;30m ��������������������������������Ŀ [37;43m����������������� � [0m
echo   [43;37m � �����������������[46;30m � 1 [A] : Aplica��es             � [37;43m����������������� � [0m
echo   [43;37m � ����������۲�����[46;30m � 2 [B] : Especifico             � [37;43m����������۲����� � [0m
echo   [43;37m � ����������۲�����[46;30m � 3 [C] : Partilhado             � [37;43m����������۲����� � [0m
echo   [43;37m � ������� I ۲�����[46;30m � 4 [U] : Utilit�rios            � [37;43m������� I ۲����� � [0m
echo   [43;37m � ������� B ۲�����[46;30m � 5 [E] : Editor                 � [37;43m������� B ۲����� � [0m
echo   [43;37m � ������� I ۲�����[46;30m � 6 [R] : Rede                   � [37;43m������� I ۲����� � [0m
echo   [43;37m � ������� T ۲�����[46;30m � 7 [J] : Jogos                  � [37;43m������� T ۲����� � [0m
echo   [43;37m � ����������۲�����[46;30m � 8 [S] : Sistema                � [37;43m����������۲����� � [0m
echo   [43;37m � ����������۲�����[46;30m � 9 [W] : Windows                � [37;43m����������۲����� � [0m
echo   [43;37m � �����������������[46;30m � 0 [U] : Linha de Comandos      � [37;43m����������������� � [0m
echo   [43;37m � �����������������[46;30m ��������������������������������ͼ [37;43m����������������� � [0m
echo   [43;37m � ���������������������������������������������������������������������� � [0m
echo   [43;37m �������������������������������������������������������������������������� [0m
Ask "Op��o : ",1A2B3C4U5E6R7J8S9W0U_
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
echo Digite IBIT ou a tecla �F9� para voltar ao modo assistido.
echo.
echo.
