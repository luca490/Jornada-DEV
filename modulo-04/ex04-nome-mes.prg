FUNCTION Main()

    LOCAL cNumeroMes := ""
    LOCAL nNumeroMes := 0
    
    QOut("=======================================")
    QOut("CONVERSOR NUMERAL PARA EXTENSO DE MESES")
    QOut("=======================================")

    ACCEPT "Digite o numero de algum mes (1 a 12): " TO cNumeroMes
    nNumeromes := Val(cNumeroMes)
    QOut("=======================================")

    DO CASE
    CASE nNumeroMes == 1 ; QOut("Seu Mes e Janeiro!")
    CASE nNumeroMes == 2 ; QOut("Seu Mes e Fevereiro!")
    CASE nNumeroMes == 3 ; QOut("Seu Mes e Março!")
    CASE nNumeroMes == 4 ; QOut("Seu Mes e Abril")
    CASE nNumeroMes == 5 ; QOut("Seu Mes e Maio!")
    CASE nNumeroMes == 6 ; QOut("Seu Mes e Junho!")
    CASE nNumeroMes == 7 ; QOut("Seu Mes e Julho!")
    CASE nNumeroMes == 8 ; QOut("Seu Mes e Agosto!")
    CASE nNumeroMes == 9 ; QOut("Seu Mes e Setembro!")
    CASE nNumeroMes == 10 ; QOut("Seu Mes e Outubro!")
    CASE nNumeroMes == 11 ; QOut("Seu Mes e Novembro!")
    CASE nNumeroMes == 12 ; QOut("Seu Mes e Dezembro!")
    OTHERWISE ; QOut("Numero fora do intervalo.")
    ENDCASE

RETURN NIL
