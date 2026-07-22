FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL cNota1 := ""
    LOCAL cNota2 := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    WHILE .T.
        ACCEPT "Digite o nome do aluno: " TO cNome
        IF Len(Trim(cNome)) > 0
            EXIT
        ELSE
            QOut("Nome inválido! Digite novamente.")
        ENDIF
    ENDDO

    WHILE .T.
        ACCEPT "Digite a disciplina (3 letras maiúsculas): " TO cDisc
        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ELSE
            QOut("Disciplina inválida! Use exatamente 3 letras maiúsculas.")
        ENDIF
    ENDDO

    WHILE .T.
        ACCEPT "Digite a primeira nota (0 a 10): " TO cNota1
        nNota1 := Val(cNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ELSE
            QOut("Nota inválida! Digite um valor entre 0 e 10.")
        ENDIF
    ENDDO

    WHILE .T.
        ACCEPT "Digite a segunda nota (0 a 10): " TO cNota2
        nNota2 := Val(cNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ELSE
            QOut("Nota inválida! Digite um valor entre 0 e 10.")
        ENDIF
    ENDDO
    nMedia := (nNota1 + nNota2) / 2
    QOut("==============================")
    QOut("       DADOS DO ALUNO")
    QOut("==============================")
    QOut("Nome: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1: " + Str(nNota1))
    QOut("Nota 2: " + Str(nNota2))
    QOut("Média: " + Str(nMedia))
    QOut("==============================")
RETURN
