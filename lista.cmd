@Echo Off
if "%1"=="" goto Message

:Loop
  For %%f in (%1) do Echo %%f
  Shift
  if "%1"=="" Goto End
Goto Loop

:Message
  Call IBIT_Log
  Echo Sintaxe : Lista ®ficheiro ...¯
  Echo.
  Echo Produz uma lista de ficheiros a partir de wildcards!
  Echo.
  Echo.

:End
