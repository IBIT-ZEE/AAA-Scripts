@Echo Off
:Loop
Cls
%DrvPri%
echo.
echo  旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo  � 같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같 �
echo  � 같IBIT � Inform쟴ica, Bur쥁ica e Inova눯o Tecnol줳ica       �袴袴袴袴袴뺐� �
echo  � 같Av. das For놹s Armadas, 155 r/c                           �    /\    별� �
echo  � 같Apartado 228                                              �  /_\/_\  별� �
echo  � 같4820 Fafe                             Tel/Ctr 253 599 999 � 켐袴袴羔 별� �
echo  � 같                                      Dat/Tel 253 599 777 � ArteWare 별� �
echo  � 같ibit@mail.telepac.pt                  Fax/Dat 253 599 898 훤袴袴袴袴暠같 �
echo  � 같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같 �
echo  � 같굇굇굇굇굇굇굅� 旼컴컴컴컴컴컴컴컴왯컴컴컴컴컴컴컴컴커 같굇굇굇굇굇굇굅� �
echo  � 같굇께께께께껑굅� �[1] Aplica뉏es   납[A] Aplica뉏es   � 같굇께께께께껑굅� �
echo  � 같굇께幡賽昉껑굅� �[2]              납[B] Backups      � 같굇께幡賽昉껑굅� �
echo  � 같굇께幡輻昉껑굅� �[3]              납[C]              � 같굇께幡輻昉껑굅� �
echo  � 같굇께� I 昉껑굅� �[4]              납[D]              � 같굇께� I 昉껑굅� �
echo  � 같굇께� B 昉껑굅� �[5]              납[E] Editor       � 같굇께� B 昉껑굅� �
echo  � 같굇께� I 昉껑굅� �[6]              납[F]              � 같굇께� I 昉껑굅� �
echo  � 같굇께� T 昉껑굅� �[7] Jogos        납[G]              � 같굇께� T 昉껑굅� �
echo  � 같굇께白霜昉껑굅� �[8]              납[H]              � 같굇께白霜昉껑굅� �
echo  � 같굇께白複昉껑굅� �[9] Utilit쟲ios  납[I]              � 같굇께白複昉껑굅� �
echo  � 같굇께께께께껑굅� �[0] DOS          납[ ]              � 같굇께께께께껑굅� �
echo  � 같굇굇굇굇굇굇굅� 읕컴컴컴컴컴컴컴컴牡컴컴컴컴컴컴컴컴켸 같굇굇굇굇굇굇굅� �
echo  � 같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같같 �
echo  읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Ask "Op뇙o : ",1234567890ABCDEFGHIJ_
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
echo Digite IBIT ou a tecla 췋9� para voltar ao modo assistido.
echo.
echo.
