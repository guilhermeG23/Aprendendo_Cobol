      *EXPLICANDO AREAS DE TRABALHO
       IDENTIFICATION DIVISION.
      *DOCUMENTACAO SOBRE O PROGRAMA
       PROGRAM-ID. EXEMPLO26.
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
           DISPLAY '----------------------'
           DISPLAY '''TYPES PRINTS'''.
           DISPLAY '----------------------'
           DISPLAY 'TESTE VALIDO'
           DISPLAY 100.
           DISPLAY +100.
           DISPLAY +100.9.
           DISPLAY -100.9.
           DISPLAY '----------------------'
           DISPLAY 'TESTE INVALIDO�'.
           DISPLAY '1,0'.
           DISPLAY '10.'.
           DISPLAY '10,9-'.
           DISPLAY '----------------------'
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.