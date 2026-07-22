FUNCTION Main()
    LOCAL cNome    := "Lucas"
    LOCAL cCidade  := "Diadema, SP"
    LOCAL cCurso   := "Harbour/ADVPL"
    LOCAL dHoje    := Date()
    LOCAL cHora    := Time()
    
    hb_cdpSelect("PT850")

    QOut("========================================================")
    QOut("              FICHA DE APRESENTA€ÇO")
    QOut("========================================================")
    QOut("Nome:            " + cNome)
    QOut("Cidade:          " + cCidade)
    QOut("Curso:           " + cCurso)
    QOut("Data Atual:      " + DToC(dHoje))
    QOut("Hora Atual:      " + cHora)
    QOut("========================================================")
RETURN NIL
