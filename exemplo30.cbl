      *EXPLICANDO AREAS DE TRABALHO
       IDENTIFICATION DIVISION.
      *DOCUMENTACAO SOBRE O PROGRAMA
       PROGRAM-ID. EXEMPLO30.
       AUTHOR. GUILHERME.
       ENVIRONMENT DIVISION.
      *I/O PERIFERICOS
       DATA DIVISION.
      *I/O FILES
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *AREA DE VARIAVEIS
       77 WRK-A PIC 9(02) VALUE ZEROS.
       77 WRK-B PIC 9(02) VALUE ZEROS.
       77 WRK-C PIC 9(02) VALUE ZEROS.
       77 WRK-D PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
      *VARIAVEIS VALIDAS E NAO VALIDAS  
       0001-PRINCIPAL.
      *MOVENDO UM VALOR PARA DENTRO DE UMA VARIAVEL
           MOVE 6 TO WRK-A.
           MOVE 7 TO WRK-B.
           MOVE 20 TO WRK-C.
      *FAZ A SUBSTRACAO DE (A+B)-C=C
           SUBTRACT WRK-A WRK-B FROM WRK-C.
      *FAZ A SUBSTRACAO DE (A+B)-C=C E FAZ (A+B+C)-D=D 
           SUBTRACT WRK-A WRK-B FROM WRK-C GIVING WRK-D.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.