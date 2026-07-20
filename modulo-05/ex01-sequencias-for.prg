FUNCTION Main()
    LOCAL n := 0
    QOut("Iniciando 1 a 100")
    FOR n := 1 TO 100
        QOut(n)
    NEXT

    QOut("Iniciando -50 a 50")
    FOR n := -50 TO 50
        QOut(n)
    NEXT

    QOut("Iniciando 80 a 5")
    FOR n := 80 TO 5 STEP -1
        QOut(n)
    NEXT
    QOut("FIM DAS SEQUENCIAS")
RETURN NIL
