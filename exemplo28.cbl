      *EXPLICANDO AREAS DE TRABALHO
       IDENTIFICATION DIVISION.
      *DOCUMENTACAO SOBRE O PROGRAMA
       PROGRAM-ID. EXEMPLO28.
       AUTHOR. GUILHERME.
       ENVIRONMENT DIVISION.
      *I/O PERIFERICOS
       DATA DIVISION.
      *I/O FILES
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *AREA DE VARIAVEIS
       77 WRK-DATA PIC Z(10) VALUE ZEROS.
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
      *VARIAVEIS VALIDAS E NAO VALIDAS  
       0001-PRINCIPAL.
      *MOVENDO UM VALOR PARA DENTRO DE UMA VARIAVEL
           MOVE 2019-11-26 TO WRK-DATA.
           DISPLAY WRK-DATA.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.