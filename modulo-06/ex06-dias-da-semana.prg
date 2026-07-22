FUNCTION Main()
   LOCAL aDias := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
   LOCAL nDia

   QOut("Digite um numero de 1 a 7:")
   ACCEPT "" TO nDia
   nDia := Val(nDia)
   IF nDia >= 1 .AND. nDia <= 7
      QOut("Dia da semana: " + aDias[nDia])
   ELSE
      QOut("Numero invalido!")
   ENDIF
RETURN NIL
