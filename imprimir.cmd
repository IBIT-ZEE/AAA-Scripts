@Echo Off
Call IBIT_Log
if "%1"=="" Goto Message

Echo _            5   CPP (10   + DW)
Echo _            6   CPP (12   + DW)
Echo _            8.5 CPP (17.1 + DW)
Echo DC2/Æ18Ø    10   CPP
Echo Esc M       12   CPP
Echo Esc g       15   CPP
Echo SI          17.1 CPP (10 + comp.)
Echo Esc SI      20   CPP (12 + comp.)
Echo Esc WÆnØ    Double Width  (0=Fim ; 1=Init.)
Echo Esc wÆnØ    Double Heigth (0=Fim ; 1=Init.)

Sequencia de inicializaá∆o
---------------------------
Echo Esc @              Inicializar
Echo Esc 2              6  LPP para incremento de linha
Echo SI/Æ15Ø            17 CPP para incremento de letra
Echo Esc Cnn            Comprimento em linhas
Echo Esc lnn            define a margem esquerda (20 chars)
Echo.
Echo.

Ask Imprimir %1 (S/N)...,SN
if Errorlevel 2 Goto End


:Loop
  if not exist %1 goto NO_FILE
  rem Echo @Ww%1       > Prn
  Echo @2CBl     > Prn
  Print %1
  Goto NEXT_FILE

  :NO_FILE
  Echo o ficheiro %1 n∆o existe!
  Pause

  :NEXT_FILE
  Shift
  If "%1"=="" Goto End
Goto Loop

:Message
  Echo Sintaxe : Imprimir [ficheiro]

:End
Echo.
Echo.

