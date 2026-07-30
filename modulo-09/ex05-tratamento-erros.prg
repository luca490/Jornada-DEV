FUNCTION Main()

    LOCAL nA := 10
    LOCAL nB := 0
    LOCAL nRes

    BEGIN SEQUENCE

        nRes := nA / nB

        QOut("Resultado: " + Str(nRes))

    RECOVER USING oErro

        QOut("Erro capturado: " + oErro:Description)

    END SEQUENCE

    QOut("O programa continua de pé")

RETURN NIL
