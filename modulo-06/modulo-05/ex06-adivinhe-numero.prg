FUNCTION Main()
    LOCAL nNumeroSecreto := HB_RandomInt(1, 100)
    LOCAL nPalpite := 0
    LOCAL nI

    QOut("==============================")
    QOut("      JOGO DE ADIVINHACAO")
    QOut("==============================")

    FOR nI := 1 TO 7
        ACCEPT "Digite seu palpite (1 a 100): " TO nPalpite
        nPalpite := Val(nPalpite)
        IF nPalpite == nNumeroSecreto
            QOut("Parabens! Voce acertou!")
            QOut("Tentativas usadas: " + Str(nI))
            EXIT
        ELSEIF nPalpite < nNumeroSecreto
            QOut("Errado! O numero secreto e MAIOR.")
        ELSE
            QOut("Errado! O numero secreto e MENOR.")
        ENDIF
        QOut("Tentativa " + Str(nI) + " de 7")
        QOut("------------------------------")
    NEXT

    IF nPalpite <> nNumeroSecreto
        QOut("Fim de jogo! Voce esgotou suas tentativas.")
    ENDIF

    QOut("O numero secreto era: " + Str(nNumeroSecreto))
RETURN NIL
