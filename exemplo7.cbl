       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO7.
      *************
      *GUILHERME R.B
      *************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(10) VALUE SPACES.
       77 WRK-NIVEL PIC 9(10) VALUE ZEROS.
           88 ADMIN VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO... '.
           ACCEPT WRK-USUARIO.

           DISPLAY 'NIVEL... '.
           ACCEPT WRK-NIVEL.

           IF ADMIN
               DISPLAY 'NIVEL - ADM'
           ELSE
               IF USER
                   DISPLAY 'NIVEL - USER'
               ELSE
                   DISPLAY 'USER NAO AUTORIZADO'

               END-IF
           END-IF
           STOP RUN.
