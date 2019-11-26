      *EXPLICANDO AREAS DE TRABALHO
       IDENTIFICATION DIVISION.
      *DOCUMENTACAO SOBRE O PROGRAMA
       PROGRAM-ID. EXEMPLO1.
       AUTHOR. GUILHERME.
       ENVIRONMENT DIVISION.
      *I/O PERIFERICOS
       DATA DIVISION.
      *I/O FILES
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *AREA DE VARIAVEIS
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
      *VARIAVEIS VALIDAS E NAO VALIDAS  
       0001-PRINCIPAL.
           DISPLAY '''TYPES PRINTS'''.
           DISPLAY 'VALID:'.
           DISPLAY '‘This is valid’'.
           DISPLAY '"This is valid"'.
           DISPLAY '‘This isn’’t invalid’'.
           DISPLAY 'NO VALID'.
           DISPLAY 'Invalid:'.
           DISPLAY '‘This is invalid”'.
           DISPLAY '‘This isn’t valid’'.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.