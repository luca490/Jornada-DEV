FUNCTION Main()
    
    LOCAL cNome := ""
    LOCAL cSalario := ""
    LOCAL nSalario := 0
    LOCAL nReajuste := 0

    QOut("==============================")
    QOut("---REAJUSTE DE SALARIO 2026---")
    QOut("==============================")

    ACCEPT "Escreva seu salario atual:R$" TO cSalario
    nSalario := Val(cSalario)

    QOut("==============================")

    IF nSalario <= 1000
        QOut("Seu Salario antigo:R$" , nSalario)
        nReajuste := nSalario * 1.15
        QOut( "Seu novo salario:R$" + AllTrim(Str(nReajuste)))

    ELSEIF nSalario > 1000 .AND. nSalario <= 2000
        QOut("Seu Salario antigo:R$" , nSalario)
        nReajuste := nSalario * 1.12
        QOut( "Seu novo salario:R$" + AllTrim(Str(nReajuste)))

    ELSEIF nSalario > 2000 .AND. nSalario <= 4000
        QOut("Seu Salario antigo:R$" , nSalario)
        nReajuste := nSalario * 1.08
        QOut( "Seu novo salario:R$" + AllTrim(Str(nReajuste)))

    ELSE
        QOut("Seu Salario antigo:R$" , nSalario)
        nReajuste := nSalario * 1.05
        QOut( "Seu novo salario:R$" + AllTrim(Str(nReajuste)))
    ENDIF
    
RETURN NIL
