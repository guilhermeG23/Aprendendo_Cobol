       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO11.
      *************
      *GUILHERME R.B
      *CRIAR UM EXEMPLO
      *************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR1 PIC 9(02) VALUE ZEROS.
       77 WRK-VALOR2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL PIC 9(02) VALUE ZEROS.
       77 WRK-FORM PIC Z9 VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-VALOR1 FROM CONSOLE.
           ACCEPT WRK-VALOR2 FROM CONSOLE.
           COMPUTE WRK-RESUL = (WRK-VALOR1 + WRK-VALOR2) / 2.
           MOVE WRK-RESUL TO WRK-FORM.
           DISPLAY WRK-FORM.
      *ESTRUTURA CHAMADA DE IF NINHADO POR TER 2 OU MAIS IF
           IF WRK-RESUL >= 7
               DISPLAY 'APROVADO'
           ELSE
               IF WRK-RESUL >= 4
                   DISPLAY 'EXAME'
               ELSE
                   DISPLAY 'REPROVADO SEM CHANCES DE RECUPERACAO'
               END-IF
           END-IF.

           STOP RUN.
