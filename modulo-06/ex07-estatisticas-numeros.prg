FUNCTION Main()
   LOCAL aV := {}
   LOCAL nI
   LOCAL nSoma := 0
   LOCAL nMedia

   FOR nI := 1 TO 10
      QOut("Digite o " + Str(nI) + " numero:")
      ACCEPT "" TO nV
      nV := Val(nV)

      AAdd(aV, nV)
      nSoma += nV
   NEXT

   ASort(aV)
   nMedia := nSoma / Len(aV)
   QOut("")
   QOut("Numeros em ordem crescente:")

   FOR nI := 1 TO Len(aV)
      QOut(Str(aV[nI]))
   NEXT

   QOut("")
   QOut("Soma: " + Str(nSoma))
   QOut("Media: " + Str(nMedia))
   QOut("Menor numero: " + Str(aV[1]))
   QOut("Maior numero: " + Str(aV[Len(aV)]))
RETURN NIL
