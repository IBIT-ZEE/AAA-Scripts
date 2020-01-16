Call IBIT_Log
if "%1"=="" goto Message

Echo Procurando no disco...
Tree  /b %1 > %Tmp%\File.Tmp
Xcopy /v @%Tmp%\File.Tmp %2

if "%3"=="" if not "%2"=="/d" Goto Clean
if not "%3"=="" if not "%3"=="/d" Goto Clean
Call IBIT_Log
Type %Tmp%\File.Tmp
Ask "Apagar todos os originais de %1 (S/N)...",SN
if ErrorLevel 2 Goto End
Delete @File.Tmp /n

:Clean
Del %Tmp%\File.Tmp
Goto End

:Message
Echo Sintaxe : Agrupar ®ficheiro¯ ®destino¯ [/d]
Echo.
Echo           . use /d para apagar os originais
Echo.          ³
Echo           ³ NÆo ‚ aconselhavel agrupar ficheiros onde j  existam
Echo           ³ ocurrencias destes ou ocorrer  um erro de c¢pia ciclica.
Echo           ³
Echo           ³ * os "switches" sÆo "case sensitive"

:End
Echo.
Echo.
