FUNCTION Main()
   LOCAL aProdutos := {}

   WHILE .T.

      DO CASE
      CASE Menu(aProdutos) == 1
         CadastrarProduto(aProdutos)

      CASE Menu(aProdutos) == 2
         ListarProdutos(aProdutos)

      CASE Menu(aProdutos) == 3
         EntradaEstoque(aProdutos)

      CASE Menu(aProdutos) == 4
         SaidaEstoque(aProdutos)

      CASE Menu(aProdutos) == 5
         BuscarProduto(aProdutos)

      CASE Menu(aProdutos) == 6
         RelatorioEstoque(aProdutos)
         
      CASE Menu(aProdutos) == 0
         ? "Sistema encerrado"
         EXIT
      OTHERWISE
         ? "Opcao invalida"
      ENDCASE
   ENDDO
RETURN NIL
