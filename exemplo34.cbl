      *EXPLICANDO AREAS DE TRABALHO
       IDENTIFICATION DIVISION.
      *DOCUMENTACAO SOBRE O PROGRAMA
       PROGRAM-ID. EXEMPLO34.
       AUTHOR. GUILHERME.
       ENVIRONMENT DIVISION.
      *I/O PERIFERICOS
       DATA DIVISION.
      *I/O FILES
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *AREA DE VARIAVEIS
      *REDEFINICAO TEM QUE TER O MESMO NIVEL DO ORIGINAL 
       01 WRK-OLD PIC X(10).
       01 WRK-NEW1 REDEFINES WRK-OLD PIC 9(8).
       01 WRK-NEW2 REDEFINES WRK-OLD PIC A(10).
       05 WRK-DATE1 VALUE '20140831'.
       05 WRK-DATE2 REDEFINES WRK-DATE1 PIC 9(8).
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
      *VARIAVEIS VALIDAS E NAO VALIDAS  
       0001-PRINCIPAL.
      *MOVENDO UM VALOR PARA DENTRO DE UMA VARIAVEL
           DISPLAY WRK-DATE1.
           DISPLAY WRK-DATE2.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.