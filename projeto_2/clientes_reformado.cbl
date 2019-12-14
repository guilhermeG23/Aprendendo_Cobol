      *DIVISOES NECESSARIAS
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ***********************
      *AUTHOR GUILHERMETI
      *OBJ: GESTAO DE CLIENTES
      ***********************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'CLIENTES.DAT'
               ORGANIZATION IN INDEXED
      *        LEITURA DIRETA DOS VALORES EM ARQUIVO
               ACCESS MODE IS RANDOM
      *        TRATAMENTO DO ARQUIVO
               FILE STATUS IS CLIENTES-STATUS
      *        PROCURAR POR ESSE VALOR
               RECORD KEY IS CLIENTES-CHAVE.

       DATA DIVISION.

       FILE SECTION.
       FD CLIENTES.
           01 CLIENTES-REG.
               05 CLIENTES-CHAVE.
                   10 CLIENTES-FONE  PIC 9(09).
               05 CLIENTES-NOME      PIC X(30).
               05 CLIENTES-EMAIL     PIC X(40).


       WORKING-STORAGE SECTION.

       77 WRK-OPCAO     PIC X(1).
       77 WRK-MODULO    PIC X(20).
       77 WRK-TECLA     PIC X(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      *        ZERA A TELA
               10 BLANK SCREEN.
      *        EOL(END OF LINE)
               10 LINE 01 COLUMN 01 PIC X(15) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 15 PIC X(15)
                   BACKGROUND-COLOR 3
      *            COR DA LETRA
      *            FOREGROUND-COLOR 1
                   FOREGROUND-COLOR 0
                   FROM 'SISTEME CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTA'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE '6 - SAIR'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: .....'.
           05 LINE 14 COLUMN 28 USING WRK-OPCAO.

       PROCEDURE DIVISION.
      *TRABALHA ENTRE AS COLUNAS 8 A 72


      *MAIN-PROCEDURE.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
      *    TEM QUE CARREGAR O VALOR PARA A VARIAVEL ANTES
      *    DE CARREGAR A TELA, POIS É UMA LINGUAGEM PROCEDURAL
           MOVE 'MODULO - INCLUSAO' TO WRK-MODULO.

           DISPLAY TELA.

           ACCEPT MENU.

      *    AT 1610 É LINHA 16 COLUNA 10
      *    ACCEPT WRK-OPCAO AT 1610.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
      *            PROCESSA O LOCAL CHAMADO E DEVOLVE ONDE PAROU
      *            CHAMA O 5000, USA ELE E DEPOIS CONTINUA DAQUI
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM UMA OPCAO VALIDA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
           CONTINUE.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 1620.

       END PROGRAM CLIENTES.
