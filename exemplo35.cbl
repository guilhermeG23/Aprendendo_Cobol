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
       01 WRK-DESCRIPTION.
       05 WRK-NUM.
       10 WRK-NUM1 PIC 9(2) VALUE 20.
       10 WRK-NUM2 PIC 9(2) VALUE 56.
       05 WRK-CHAR.
       10 WRK-CHAR1 PIC X(2) VALUE 'AA'.
       10 WRK-CHAR2 PIC X(2) VALUE 'BB'.
       66 WRK-RENAME RENAMES WRK-NUM2 THRU WRK-CHAR2.
       PROCEDURE DIVISION.
      *PROGRAMA EM SI, AREA DE PROCESSAMENTO
      *VARIAVEIS VALIDAS E NAO VALIDAS  
       0001-PRINCIPAL.
      *TESTE DO RENAME DDO COBOL
           DISPLAY WRK-RENAME.
           STOP RUN.
      *EXECUTANDO A CHAMADA
       0001-PRINCIPAL.