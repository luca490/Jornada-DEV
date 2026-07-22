FUNCTION Main()
   LOCAL aProdutos := {}
   LOCAL cNome
   LOCAL nPreco
   LOCAL cResp := "S"
   LOCAL nTotal := 0
   LOCAL nI

   WHILE Upper(cResp) == "S"
      QOut("")
      QOut("Nome do produto:")
      ACCEPT "" TO cNome
      QOut("Preco do produto:")
      ACCEPT "" TO nPreco
      nPreco := Val(nPreco)

      AAdd(aProdutos, {cNome, nPreco})

      nTotal += nPreco

      QOut("Deseja adicionar outro produto? (S/N)")
      ACCEPT "" TO cResp
   ENDDO

   QOut("")
   QOut("===== CARRINHO =====")
   FOR nI := 1 TO Len(aProdutos)
      QOut(aProdutos[nI][1] + " - R$ " + Str(aProdutos[nI][2]))
   NEXT
   QOut("")
   QOut("Total da compra: R$ " + Str(nTotal))

RETURN NIL
