FUNCTION Main()
    LOCAL nValor := 0
    
    WHILE .T.
        ACCEPT "Digite um valor inteiro: " TO nValor
        nValor := Val(nValor)
        IF nValor <= 0
            EXIT
        ENDIF
        QOut("O dobro e: " + Str(nValor * 2))
    ENDDO
    QOut("Programa encerrado.")
RETURN NIL
