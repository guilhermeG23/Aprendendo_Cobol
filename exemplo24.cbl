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
       77 WRK-TESTE PICTURE X(10) VALUE SPACES.
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
       0001-PRINCIPAL.
           ACCEPT WRK-TESTE FROM CONSOLE.
           DISPLAY WRK-TESTE.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.