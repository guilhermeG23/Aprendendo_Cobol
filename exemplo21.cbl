       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO21.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *ARMAZENANDO DENTRO DO ARRAY DOS VALORES DE UM GRUPO
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(06) VALUE 'TESTE1'.
           02 FILLER PIC X(06) VALUE 'TESTE2'.
           02 FILLER PIC X(06) VALUE 'TESTE3'.
           02 FILLER PIC X(06) VALUE 'TESTE4'.
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(06) OCCURS 12 TIMES.

       PROCEDURE DIVISION.
           DISPLAY WRK-MES(01).
           DISPLAY WRK-MES(02).
           DISPLAY WRK-MES(03).
           DISPLAY WRK-MES(04).
           STOP RUN.
