FUNCTION Main()
   LOCAL aAlunos := {}
   LOCAL nQtd
   LOCAL nI
   LOCAL cNome
   LOCAL n1, n2, n3, n4
   LOCAL nMedia

   QOut("Digite a quantidade de alunos:")
   ACCEPT "" TO nQtd
   nQtd := Val(nQtd)

   FOR nI := 1 TO nQtd

      QOut("")
      QOut("Aluno " + Str(nI))

      QOut("Nome:")
      ACCEPT "" TO cNome

      QOut("Nota 1:")
      ACCEPT "" TO n1
      n1 := Val(n1)

      QOut("Nota 2:")
      ACCEPT "" TO n2
      n2 := Val(n2)

      QOut("Nota 3:")
      ACCEPT "" TO n3
      n3 := Val(n3)

      QOut("Nota 4:")
      ACCEPT "" TO n4
      n4 := Val(n4)

      AAdd(aAlunos, {cNome, n1, n2, n3, n4})

   NEXT

   QOut("")
   QOut("===== APROVADOS =====")

   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + ;
                 aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia >= 7
         QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia))
      ENDIF

   NEXT

   QOut("")
   QOut("===== REPROVADOS =====")

   FOR nI := 1 TO Len(aAlunos)
      nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + ;
                 aAlunos[nI][4] + aAlunos[nI][5]) / 4
      IF nMedia < 7
         QOut(aAlunos[nI][1] + " - Media: " + Str(nMedia))
      ENDIF
   NEXT
RETURN NIL
