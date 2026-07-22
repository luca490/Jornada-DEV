FUNCTION Main()
   LOCAL aVetor := {67, 69, 78, 3, 90, 21, 7, 56, 34, 10}
   LOCAL nI
   QOut("Array original:")

   FOR nI := 1 TO Len(aVetor)
      QOut(Str(aVetor[nI]))
   NEXT

   BubbleSort(aVetor)
   QOut("")
   QOut("Array ordenado:")

   FOR nI := 1 TO Len(aVetor)
      QOut(Str(aVetor[nI]))
   NEXT
RETURN NIL


FUNCTION BubbleSort(aVetor)

   LOCAL nI
   LOCAL nJ
   LOCAL nTemp

   FOR nI := 1 TO Len(aVetor) - 1
      FOR nJ := 1 TO Len(aVetor) - nI
         IF aVetor[nJ] > aVetor[nJ + 1]

            nTemp := aVetor[nJ]
            aVetor[nJ] := aVetor[nJ + 1]
            aVetor[nJ + 1] := nTemp

         ENDIF
      NEXT
   NEXT
RETURN aVetor
