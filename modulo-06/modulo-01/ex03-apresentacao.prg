FUNCTION Main()
    LOCAL cNOME := "Lucas"
    LOCAL cCIDADE := "Diadema,SP"
    LOCAL cCURSO := "Harbour/ADVPL"

    hb_cdpSelect("PT850")

    QOut("========================================================")
    QOut("FICHA DE APRESENTAÇÃO")
    QOut("========================================================")
    QOut("Nome:     " + cNOME)
    QOut("Cidade:   " + cCIDADE)
    QOut("Curso:    " + cCURSO)
    QOut("========================================================")
RETURN NIL
