FUNCTION Main()
    LOCAL nValor := 0
    LOCAL nTotal := 0
    LOCAL nQtd := 0

    WHILE .T.
        ACCEPT "Digite um valor (0 para sair): " TO nValor
        nValor := Val(nValor)
        IF nValor == 0
            EXIT
        ENDIF
        nTotal := nTotal + nValor
        nQtd := nQtd + 1
    ENDDO
    QOut("Soma total: " + Str(nTotal))
    QOut("Quantidade de valores: " + Str(nQtd))
RETURN
