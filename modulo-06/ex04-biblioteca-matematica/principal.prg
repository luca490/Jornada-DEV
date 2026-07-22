PROCEDURE Main()
   SET PROCEDURE TO matematica.prg
   QOut("Fatorial de 5: " + AllTrim(Str(FatorialN(5))))
   QOut("7 eh primo? " + If(EhPrimo(7), "Sim", "Nao"))
   QOut("MDC de 12 e 18: " + AllTrim(Str(MDC(12, 18))))
   QOut("MMC de 12 e 18: " + AllTrim(Str(MMC(12, 18))))
RETURN
