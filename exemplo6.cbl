       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO6.
      *************
      *GUILHERME R.B
      *************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      *FAZ ENTENDER QUE . � UMA , NO SISTEMA
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
      * V A O PONTO FLUTUANTE, 99 -> 2 VALORES DE PONTO FLUTUANTE
       77 WRK-SALARIO PIC 9(06)V99 VALUE ZEROS.
      *VARIAVEL MASCARA -> FORMA DEFINIDA PARA RECEBER DADOS
       77 WRK-SAL-FORM PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.
      *    ACCEPT WRK-SAL-FORM FROM CONSOLE.
           DISPLAY 'NOME ' WRK-NOME.
      *COMANDO PARA MOVER VALOR DE UMA VARIAVEL PARA OUTRA
           MOVE WRK-SALARIO TO WRK-SAL-FORM.
           DISPLAY 'SALARIO ' WRK-SAL-FORM.
      *    DISPLAY 'SALARIO ' WRK-SAL-FORM.
           STOP RUN.