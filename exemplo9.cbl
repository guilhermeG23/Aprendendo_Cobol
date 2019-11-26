       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO9.
      *************
      *GUILHERME R.B
      *CRIAR UM EXEMPLO
      *************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR1 PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR2 PIC 9(10) VALUE ZEROS.
       77 WRK-RES PIC 9(10) VALUE ZEROS.
       77 WRK-RESTO PIC 9(10) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-VALOR1 FROM CONSOLE.
           ACCEPT WRK-VALOR2 FROM CONSOLE.
           DISPLAY '====================SOMA'
           ADD WRK-VALOR1 WRK-VALOR2 TO WRK-RES.
           DISPLAY WRK-RES.
           DISPLAY '===================='
           DISPLAY '====================SUB'
           SUBTRACT WRK-VALOR1 FROM WRK-VALOR2 GIVING WRK-RES.
           DISPLAY WRK-RES.
           DISPLAY '===================='
           DISPLAY '====================DIV'
           DIVIDE WRK-VALOR1 BY WRK-VALOR2 GIVING WRK-RES
           REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO: ' WRK-RES ' RESTO: ' WRK-RESTO.
           DISPLAY '===================='
           DISPLAY '====================MUL'
           MULTIPLY WRK-VALOR1 BY WRK-VALOR2 GIVING WRK-RES.
           DISPLAY WRK-RES.
           DISPLAY '===================='
      *PARA TRABALHAR COM EXPRESSAO MATEMATICA
           DISPLAY '====================COMP'
           COMPUTE WRK-RES = (WRK-VALOR1 + WRK-VALOR2) * 2.
           DISPLAY WRK-RES.
           DISPLAY '===================='
           STOP RUN.
