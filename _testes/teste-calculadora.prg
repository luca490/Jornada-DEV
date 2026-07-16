
#define CASASDECIMAIS 2

FUNCTION Main()

   LOCAL cA, cB
   LOCAL nA, nB

   ACCEPT "Digite o primeiro numero: " TO cA
   nA := Val(cA)

   ACCEPT "Digite o segundo numero: " TO cB
   nB := Val(cB)

   QOut("Soma:       " + Str(nA + nB, 10, CASASDECIMAIS))
   QOut("Subtracao: " + Str(nA - nB, 10, CASASDECIMAIS))
   QOut("Produto:   " + Str(nA * nB, 10, CASASDECIMAIS))

   IF nB <> 0
      QOut("Divisao:   " + Str(nA / nB, 10, CASASDECIMAIS))
   ELSE
      QOut("Nao e possivel dividir por zero.")
   ENDIF

RETURN NIL
