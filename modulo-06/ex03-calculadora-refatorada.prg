PROCEDURE Main()
   LOCAL n1, n2, cOp, xResultado

   n1 := LerNumero("Digite o primeiro numero: ")
   n2 := LerNumero("Digite o segundo numero: ")

   ACCEPT "Operacao (+,-,*,/): " TO cOp

   xResultado := Calcular(n1, n2, cOp)

   MostrarResultado(xResultado)
RETURN

FUNCTION LerNumero(cMensagem)
   LOCAL cValor
   ACCEPT cMensagem TO cValor
RETURN Val(cValor)

FUNCTION Calcular(n1, n2, cOp)

   DO CASE
   CASE cOp == "+"
      RETURN n1 + n2
   CASE cOp == "-"
      RETURN n1 - n2
   CASE cOp == "*"
      RETURN n1 * n2
   CASE cOp == "/"
      IF n2 == 0
         RETURN .F.
      ENDIF
      RETURN n1 / n2
   OTHERWISE
      RETURN .F.
   ENDCASE

RETURN .F.

PROCEDURE MostrarResultado(xResultado)

   IF ValType(xResultado) == "L" .AND. xResultado == .F.
      QOut("Erro: divisao por zero ou operacao invalida!")
   ELSE
      QOut("Resultado: " + AllTrim(Str(xResultado)))
   ENDIF
RETURN
