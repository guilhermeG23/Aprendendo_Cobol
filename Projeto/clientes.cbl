       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      **********************************
      *OBJ: SISTEMA PARA CLIENTES
      *AUTOR GUILHERME
      **********************************
       ENVIRONMENT DIVISION.
      *ARQUIVOS EXTERNOS DE ENTRADA
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *SELECIONAR ARQUIVOS E FORMA DE ACESSA-LO
           SELECT CLIENTES ASSIGN TO 'CLIENTE.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS CLIENTES-CHAVE
               FILE STATUS IS CLIENTES-STATUS.

       DATA DIVISION.

      *ARQUIVOS DE SESSAO
      *ESTRUTURA DE RELACIONAMENTO DOS ARQUIVOS
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME PIC X(30).
           05 CLIENTES-EMAIL PIC X(40).

       WORKING-STORAGE SECTION.
      *POSCIONAMENTO DE PIC POR CONVESSAO � COLUNA 44 OU 48
      *DEPENDE MAIS DA EMPRESA
      *VARIALVE DE INTERACAO
       77 WRK-OPCAO PIC X(1).
      *TITULO PAGINA
       77 WRK-TITULO PIC X(40) VALUE SPACES.
      *MODULO
       77 WRK-MODULO PIC X(25) VALUE SPACES.
      *TECLA - SEGURAR PROCESSAMENTO
       77 WRK-TECLA PIC X(20) VALUE SPACES.
      *STATUS
       77 CLIENTES-STATUS PIC 9(02) VALUE ZEROS.
      *MENSAGEM DE ERROR
       77 WRK-MSG-ERRO PIC X(30) VALUE SPACES.

      *POSICIONAMENTO DE TELA -> CONFIG SCREEN
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      *ZERAR A TELA -> CLEAR SCREEN
               10 BLANK SCREEN.
      *END OF LINE -> LIMPA DO PRIMEIRO VALOR AO ULTIMO
      *DEFINE POSICIONAMENTO
      *CRIA LINHA
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 2.
      *CRIE O TITULO DO MENU
               10 LINE 01 COLUMN 32 PIC X(20) ERASE EOL
      *COLOCA A COR DE FUNDO E A COR DE FUNDO NA LETRA
                   BACKGROUND-COLOR 2 FOREGROUND-COLOR 0
                       FROM WRK-TITULO.
               10 LINE 02 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

      *OPCOES DO MENU
       01 MENU.
      *VALORES DO MENU
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTA'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
      *ENTRADA DO MENU
           05 LINE 13 COLUMN 15 VALUE 'OPCAO.....: '.
           05 LINE 13 COLUMN 27 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE: '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
      *SE FICAR SEM VALORES, PREENCHE DE ZEROS
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUES 'NOME: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUES 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30)
                           FOREGROUND-COLOR 0
                           BACKGROUND-COLOR 3
                           FROM WRK-MSG-ERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           USING WRK-TECLA.

      *AREA DE PROCESSAMENTO
       PROCEDURE DIVISION.
      *ADICIONANDO UMA TITULO
       MOVE 'SISTEMA DE CLIENTES' TO WRK-TITULO.

       0000-PRINCIPAL SECTION.

      *CARREGAR PERFORME
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
      *ATE QUE RECEBA X PARA SAIR DESSE PROCESSAMENTO
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.
      *PARA PROCESSO
           STOP RUN.

       1000-INICIAR.

      *ABRIR O ARQUIVO
           OPEN I-O CLIENTES.
      *0 � UM STATUS QUE EXISTE
      *35 � UM STATUS QUE N�O EXISTE
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

      *CHAMANDO O NIVEL
           DISPLAY TELA.
      *ADICIONANDO MENU
      *    DISPLAY MENU.
           ACCEPT MENU.

       1100-MONTATELA.
           DISPLAY TELA.
           ACCEPT MENU.


       2000-PROCESSAR.
      *ZERANDO A MENSAGEM DE ERROR
           MOVE SPACES TO WRK-MSG-ERRO
           MOVE SPACES TO CLIENTES-NOME
           MOVE SPACES TO CLIENTES-EMAIL
           MOVE SPACES TO CLIENTES-CHAVE
      *LIMPAR O VALOR DA OPCAO
           EVALUATE WRK-OPCAO
      *OPCOES
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   PERFORM 6000-CONSULTAR
               WHEN 3
                   PERFORM 7000-ALTERAR
               WHEN 4
                   PERFORM 8000-EXCLUSAO
               WHEN 5
                   PERFORM 9000-RELATORIOTELA
               WHEN OTHER
      *QUALQUER COISA ALEM DE X � ERRO
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM UMA OPCAO VALIDA'
                   END-IF
           END-EVALUATE.
               PERFORM 1100-MONTATELA.

      *POSICIONAMENTO EM LINHA E COLUNA COM AT 16 LINHA 10 COLUNA
      *RETIRADO POR FALTA DE UTILIZANDO
      *    ACCEPT WRK-OPCAO AT 1610.

       3000-FINALIZAR.
      *    CONTINUE.
      * TEM QUE FORCAR O CLOSE DO ARQUIVO PARA NAO COROMPER
           CLOSE CLIENTES.

      *� UM PARAGRAFO
      *� O PAI DE PARAGRAFO E N�O � UMA SESSAO POR QUE NAO TEM SECTION
       5000-INCLUIR.
      *TITULO DA SELECAO
           MOVE 'MODULO - INCLUSO' TO WRK-MODULO.
           DISPLAY TELA.
      *ACESSANDO A TELA DE REGISTROS
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE A CHAVE' TO WRK-MSG-ERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.

       6000-CONSULTAR.
           MOVE 'MODULO - CONSULTA' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       INVALID KEY
                           MOVE 'NAO ENCOTRADO' TO WRK-MSG-ERRO
                       NOT INVALID KEY
                           MOVE '-- ENCONTRADO --' TO WRK-MSG-ERRO
                           DISPLAY SS-DADOS
                    END-READ.
                        ACCEPT MOSTRA-ERRO.

      *ALTERACAO
       7000-ALTERAR.
           MOVE 'MODULO - ALTERAR' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       IF CLIENTES-STATUS = 0
                           ACCEPT SS-DADOS
      *REESCREVER POR CIMA OS DADOS PELA CHAVE DO USUARIO
                               REWRITE CLIENTES-REG
                               IF CLIENTES-STATUS = 0
                                   MOVE 'REGISTRO ALTERADO' TO
                                                  WRK-MSG-ERRO
                                   ACCEPT MOSTRA-ERRO
                               ELSE
                                   MOVE 'REGISTRO NAO ALTERADO' TO
                                                  WRK-MSG-ERRO
                                   ACCEPT MOSTRA-ERRO
                               END-IF
                       ELSE
                           MOVE 'REGISTRO NAO ENCONTRADO' TO
                                                  WRK-MSG-ERRO
                           ACCEPT MOSTRA-ERRO
                       END-IF.


      *DELETANDO A CHAVE DO CLIENTE
       8000-EXCLUSAO.
           MOVE 'MODULO - EXCLUSAO' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       INVALID KEY
                           MOVE 'NAO ENCOTRADO' TO WRK-MSG-ERRO
                       NOT INVALID KEY
                           MOVE 'DESEJA EXCLUIR(S-N)' TO WRK-MSG-ERRO
                           DISPLAY SS-DADOS
                    END-READ.
                        ACCEPT MOSTRA-ERRO.
      *ESTE IF � O SUFICIENTE PARA ATIVAR O DELETE DO CLIENTE
                        IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0
                               DELETE CLIENTES
                               INVALID KEY
                                   MOVE 'NAO ESCLUIDO' TO WRK-MSG-ERRO
                                   ACCEPT MOSTRA-ERRO
                               END-DELETE
                         END-IF.

       9000-RELATORIOTELA.
           MOVE 'MODULO - RELATORIO' TO WRK-MODULO.
           DISPLAY TELA.
           MOVE 123456789 TO CLIENTES-FONE.
           START CLIENTES KEY EQUAL CLIENTES-FONE.
           READ CLIENTES
               INVALID KEY
                   MOVE 'NENHUM REGISTRO ENCONTRADO' TO WRK-MSG-ERRO
               NOT INVALID KEY
                   DISPLAY '------------------'
                   DISPLAY 'RELATORIO CLIENTES'
                   DISPLAY '------------------'
                   PERFORM UNTIL CLIENTES-STATUS = 10
                       DISPLAY CLIENTES-FONE ' '
                               CLIENTES-NOME ' '
                               CLIENTES-EMAIL
                       READ CLIENTES NEXT
                   END-PERFORM
               END-READ.
                   ACCEPT MOSTRA-ERRO.
