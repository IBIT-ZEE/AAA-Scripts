@Echo Off
:Loop
Cls
%DrvPri%
echo.
echo  ����������������������������������������������������������������������������Ŀ
echo  � �������������������������������������������������������������������������� �
echo  � ��IBIT � Inform�tica, Bur�tica e Inova��o Tecnol�gica       ����������ͻ�� �
echo  � ��Av. das For�as Armadas, 155 r/c                           �    /\    ��� �
echo  � ��Apartado 228                                              �  /_\/_\  ��� �
echo  � ��4820 Fafe                             Tel/Ctr 253 599 999 � �������� ��� �
echo  � ��                                      Dat/Tel 253 599 777 � ArteWare ��� �
echo  � ��ibit@mail.telepac.pt                  Fax/Dat 253 599 898 ����������ͼ�� �
echo  � �������������������������������������������������������������������������� �
echo  � ����������������� �����������������Ŀ�����������������Ŀ ����������������� �
echo  � ����������������� �[1] Aplica��es   ��[A] Aplica��es   � ����������������� �
echo  � ����������۲����� �[2]              ��[B] Backups      � ����������۲����� �
echo  � ����������۲����� �[3]              ��[C]              � ����������۲����� �
echo  � ������� I ۲����� �[4]              ��[D]              � ������� I ۲����� �
echo  � ������� B ۲����� �[5]              ��[E] Editor       � ������� B ۲����� �
echo  � ������� I ۲����� �[6]              ��[F]              � ������� I ۲����� �
echo  � ������� T ۲����� �[7] Jogos        ��[G]              � ������� T ۲����� �
echo  � ����������۲����� �[8]              ��[H]              � ����������۲����� �
echo  � ����������۲����� �[9] Utilit�rios  ��[I]              � ����������۲����� �
echo  � ����������������� �[0] DOS          ��[ ]              � ����������������� �
echo  � ����������������� �������������������������������������� ����������������� �
echo  � �������������������������������������������������������������������������� �
echo  ������������������������������������������������������������������������������
Ask "Op��o : ",1234567890ABCDEFGHIJ_
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
echo Digite IBIT ou a tecla �F9� para voltar ao modo assistido.
echo.
echo.
