       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO16.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-CONTADOR PIC 9(02) VALUES ZEROS.
       PROCEDURE DIVISION.
           PERFORM 10 TIMES
               ADD 1 TO WRK-CONTADOR
               DISPLAY 'TESTE' WRK-CONTADOR
           END-PERFORM.
      *PODE FAZER UM PERFORME DE UM PARAGRAFO
      *PERFORME 0001-PRINCIPAL 10 TIMES
           STOP RUN.
