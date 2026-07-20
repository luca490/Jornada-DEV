FUNCTION Main()

    LOCAL cNome := ""
    LOCAL cDisciplina := ""
    LOCAL cNota1 := ""
    LOCAL cNota2 := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0
    LOCAL cResposta := ""

    WHILE .T.

        CLS

        QOut("==============================")
        QOut("      CADASTRO DE ALUNO")
        QOut("==============================")

        // Validação do nome
        DO WHILE .T.
            ACCEPT "Digite o nome do aluno: " TO cNome

            IF Empty(cNome)
                QOut("Nome nao pode ser vazio!")
            ELSE
                EXIT
            ENDIF
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a disciplina (3 letras maiusculas): " TO cDisciplina

            IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
                EXIT
            ELSE
                QOut("Disciplina invalida!")
            ENDIF
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a primeira nota: " TO cNota1
            nNota1 := Val(cNota1)

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ELSE
                QOut("Nota deve estar entre 0 e 10!")
            ENDIF
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a segunda nota: " TO cNota2
            nNota2 := Val(cNota2)

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ELSE
                QOut("Nota deve estar entre 0 e 10!")
            ENDIF
        ENDDO

        nMedia := (nNota1 + nNota2) / 2

        QOut("")
        QOut("==============================")
        QOut("Dados do aluno:")
        QOut("Nome: " + cNome)
        QOut("Disciplina: " + cDisciplina)
        QOut("Nota 1: " + Str(nNota1))
        QOut("Nota 2: " + Str(nNota2))
        QOut("Media: " + Str(nMedia))
        QOut("==============================")

        ACCEPT "Deseja calcular outro? (S/N): " TO cResposta

        IF Upper(cResposta) <> "S"
            EXIT
        ENDIF
    ENDDO
    QOut("Programa encerrado.")
RETURN
