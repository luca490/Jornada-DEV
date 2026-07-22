FUNCTION Main()
    LOCAL cNum1 := ""
    LOCAL cNum2 := ""
    LOCAL nNum1 := 0
    LOCAL nNum2 := 0
    LOCAL cEscolha := ""
    LOCAL nRaiz
    
    QOut("==============================")
    QOut("-------CALCULADORA 2026-------")
    QOut("==============================")

    ACCEPT "Digite seu primeiro numero: " TO cNum1
    ACCEPT "Digite seu segundo numero: " TO cNum2
    nNum1 := Val(cNum1)
    nNum2 := Val(cNum2)
    QOut("==============================")
    QOut("DIGITE A OPERACAO DESEJADA:")
    QOut("==============================")
    QOut("(A) SOMA")
    QOut("(B) SUBTRACAO")
    QOut("(C) MULTIPLICACAO")
    QOut("(D) DIVISAO")
    QOut("(E) POTENCIACAO")
    QOut("(F) RAIZ QUADRADA")
    QOut("==============================")
    QOut("OBS: O calculo da raiz quadrada sera feito apenas pelo primeiro numero.")

    ACCEPT "Digite a letra correspondente: " TO cEscolha

    DO CASE
    CASE cEscolha == "A" ; QOut("SOMA: " + str(nNum1+nNum2))
    CASE cEscolha == "B" ; QOut("SUBTRACAO: " + str(nNum1 - nNum2))
    CASE cEscolha == "C" ; QOut("MULTIPLICACAO: " +  str(nNum1 * nNum2))
    CASE cEscolha == "D"
        IF Nnum2 == 0
            QOut("Impossivel realizar a operacao.")
        ELSE
            QOut("DIVISAO: " +  str(nNum1 / nNum2))
        ENDIF
    CASE cEscolha == "E" ; QOut("POTENCIACAO: " +  str(nNum1^nNum2))
    CASE cEscolha == "F"
        nRaiz := sqrt(nNum1)
        QOut("RAIZ QUADRADA: " +  str(nRaiz))
    OTHERWISE  
        QOut("Operacao Invalida!")
    ENDCASE
RETURN NIL
