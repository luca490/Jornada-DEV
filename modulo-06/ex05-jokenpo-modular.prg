PROCEDURE Main()
   LOCAL cJogada, cCPU, cResultado, cContinuar := "S"

   WHILE Upper(cContinuar) == "S"

      ACCEPT "Escolha Pedra, Papel ou Tesoura: " TO cJogada
      cJogada := Upper(AllTrim(cJogada))

      IF ! ValidarJogada(cJogada)
         QOut("Jogada invalida!")
      ELSE
         cCPU := SortearJogadaCPU()

         QOut("CPU jogou: " + cCPU)

         cResultado := DefinirVencedor(cJogada, cCPU)

         QOut(cResultado)
      ENDIF

      ACCEPT "Deseja jogar novamente? (S/N): " TO cContinuar
      cContinuar := Upper(AllTrim(cContinuar))

   ENDDO

RETURN NIL

FUNCTION SortearJogadaCPU()

   LOCAL nSorteio := HB_RandomInt(1, 3)

   DO CASE
   CASE nSorteio == 1
      RETURN "PEDRA"
   CASE nSorteio == 2
      RETURN "PAPEL"
   OTHERWISE
      RETURN "TESOURA"
   ENDCASE

RETURN ""

FUNCTION ValidarJogada(cJogada)

RETURN cJogada == "PEDRA" .OR. ;
       cJogada == "PAPEL" .OR. ;
       cJogada == "TESOURA"

FUNCTION DefinirVencedor(cJogada1, cJogada2)

   IF cJogada1 == cJogada2
      RETURN "Empate!"
   ENDIF

   IF (cJogada1 == "PEDRA"   .AND. cJogada2 == "TESOURA") .OR. ;
      (cJogada1 == "PAPEL"    .AND. cJogada2 == "PEDRA")   .OR. ;
      (cJogada1 == "TESOURA" .AND. cJogada2 == "PAPEL")

      RETURN "Voce venceu!"
   ENDIF
RETURN "CPU venceu!"
