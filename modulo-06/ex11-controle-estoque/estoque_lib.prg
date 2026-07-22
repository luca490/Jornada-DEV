FUNCTION Menu()
   LOCAL nOpcao
   CLS
   QOut("==============================")
   QOut("     CONTROLE DE ESTOQUE")
   QOut("==============================")
   QOut("1 - Cadastrar produto")
   QOut("2 - Listar produtos")
   QOut("3 - Entrada de estoque")
   QOut("4 - Saida de estoque")
   QOut("5 - Buscar produto")
   QOut("6 - Relatorio de estoque")
   QOut("0 - Sair")
   QOut("==============================")
   INPUT "Escolha uma opcao: " TO nOpcao
RETURN nOpcao

FUNCTION CadastrarProduto(aProdutos)
   LOCAL nCodigo
   LOCAL cNome
   LOCAL nQuantidade
   LOCAL nPreco
   LOCAL aProduto

   INPUT "Codigo: " TO nCodigo

   IF Buscar(aProdutos, nCodigo) > 0
      QOut("Codigo ja cadastrado!")
      RETURN NIL
   ENDIF

   INPUT "Nome: " TO cNome

   WHILE EMPTY(cNome)
      QOut("Nome invalido!")
      INPUT "Nome: " TO cNome
   ENDDO

   INPUT "Quantidade: " TO nQuantidade

   WHILE nQuantidade < 0
      QOut("Quantidade invalida!")
      INPUT "Quantidade: " TO nQuantidade
   ENDDO

   INPUT "Preco unitario: " TO nPreco

   WHILE nPreco <= 0
      QOut("Preco invalido!")
      INPUT "Preco unitario: " TO nPreco
   ENDDO

    aProduto := { ;
      nCodigo, ;
      cNome, ;
      nQuantidade, ;
      nPreco ;
   }
   AADD(aProdutos, aProduto)
   QOut("Produto cadastrado com sucesso!")
RETURN NIL

FUNCTION ListarProdutos(aProdutos)
   LOCAL nI
   IF LEN(aProdutos) == 0
      QOut("Nenhum produto cadastrado!")
      RETURN NIL
   ENDIF

   FOR nI := 1 TO LEN(aProdutos)
      QOut("------------------------------")
      QOut("Codigo: " + HB_ValToStr(aProdutos[nI][1]))
      QOut("Nome: " + aProdutos[nI][2])
      QOut("Quantidade: " + HB_ValToStr(aProdutos[nI][3]))
      QOut("Preco: R$ " + HB_ValToStr(aProdutos[nI][4]))
   NEXT

RETURN NIL

FUNCTION EntradaEstoque(aProdutos)
   LOCAL nCodigo
   LOCAL nQuantidade
   LOCAL nPosicao

   INPUT "Codigo do produto: " TO nCodigo

   nPosicao := Buscar(aProdutos, nCodigo)

   IF nPosicao == 0
      QOut("Produto nao encontrado!")
      RETURN NIL
   ENDIF
   INPUT "Quantidade de entrada: " TO nQuantidade
   WHILE nQuantidade <= 0
      QOut("Quantidade invalida!")
      INPUT "Quantidade: " TO nQuantidade
   ENDDO

   aProdutos[nPosicao][3] += nQuantidade

   QOut("Entrada realizada!")
RETURN NIL

FUNCTION SaidaEstoque(aProdutos)
   LOCAL nCodigo
   LOCAL nQuantidade
   LOCAL nPosicao

   INPUT "Codigo do produto: " TO nCodigo

   nPosicao := Buscar(aProdutos,nCodigo)

   IF nPosicao == 0
      QOut("Produto nao encontrado!")
      RETURN NIL
   ENDIF

   INPUT "Quantidade de saida: " TO nQuantidade

   IF nQuantidade > aProdutos[nPosicao][3]
      QOut("Estoque insuficiente!")
      RETURN NIL
   ENDIF

   aProdutos[nPosicao][3] -= nQuantidade

   QOut("Saida realizada!")

RETURN NIL

FUNCTION Buscar(aProdutos,nCodigo)

   LOCAL nI

   FOR nI := 1 TO LEN(aProdutos)
      IF aProdutos[nI][1] == nCodigo
         RETURN nI
      ENDIF
   NEXT

RETURN 0

FUNCTION BuscarProduto(aProdutos)
   LOCAL nCodigo
   LOCAL nPosicao
   INPUT "Codigo: " TO nCodigo
   nPosicao := Buscar(aProdutos,nCodigo)
   IF nPosicao == 0
      QOut("Produto nao encontrado!")
   ELSE
      QOut("Produto encontrado!")
      QOut("Nome: " + aProdutos[nPosicao][2])
      QOut("Quantidade: " + HB_ValToStr(aProdutos[nPosicao][3]))
      QOut("Preco: " + HB_ValToStr(aProdutos[nPosicao][4]))
   ENDIF

RETURN NIL

FUNCTION RelatorioEstoque(aProdutos)
   LOCAL nI
   LOCAL nValor
   LOCAL nTotal := 0
   FOR nI := 1 TO LEN(aProdutos)
      nValor := aProdutos[nI][3] * aProdutos[nI][4]
      QOut("------------------------------")
      QOut("Produto: " + aProdutos[nI][2])
      QOut("Valor em estoque: R$ " + HB_ValToStr(nValor))
      nTotal += nValor

   NEXT

   QOut("==============================")
   QOut("TOTAL GERAL: R$ " + HB_ValToStr(nTotal))
   QOut("==============================")
RETURN NIL
