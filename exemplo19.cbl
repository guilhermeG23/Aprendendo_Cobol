       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO19.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *PUXA DE UM ARQUIVO PADRONIZADO -> FILE BOOK
           COPY 'BOOK.COB'.
       PROCEDURE DIVISION.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
           UNTIL WRK-CONTADOR > 10
               DISPLAY WRK-CONTADOR
           END-PERFORM.
           STOP RUN.
