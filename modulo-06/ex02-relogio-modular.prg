PROCEDURE Main()

   LOCAL nI, cHora
   FOR nI := 1 TO 30
      cHora := ObterHora()
      cHora := FormatarHora(cHora)
      ExibirHora(cHora)
      Inkey(1)
   NEXT
RETURN

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)
RETURN cHora

PROCEDURE ExibirHora(cHora)
   CLS
   QOut("Hora atual: " + cHora)
RETURN
