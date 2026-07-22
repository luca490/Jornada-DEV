FUNCTION Main()
    LOCAL cNome := ""
    LOCAL cDataNasc := ""
    LOCAL dNasc := CToD("")
    LOCAL nPreco := 0
    LOCAL nIdade := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    QOut("==========================================")
    QOut("         DESCONTO PARA IDOSOS")
    QOut("==========================================")

    hb_idleSleep(1)

    ACCEPT "Informe o nome do cliente: " TO cNome
    ACCEPT "Informe a data de nascimento (dd/mm/yyyy): " TO cDataNasc
    INPUT "Informe o preco do produto: " TO nPreco
    dNasc := CToD(cDataNasc)
    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
        nTotal := nPreco - nDesconto
    ELSE
        nDesconto := 0
        nTotal := nPreco
    ENDIF

    QOut("")
    QOut("==========================================")
    QOut("          RESUMO DA COMPRA")
    QOut("==========================================")
    QOut("Cliente:             " + cNome)
    QOut("Idade:               " + Str(nIdade, 3))
    QOut("Preco do Produto:    R$ " + Str(nPreco, 10, 2))
    QOut("Desconto Aplicado:   R$ " + Str(nDesconto, 10, 2))
    QOut("Total a Pagar:       R$ " + Str(nTotal, 10, 2))
    QOut("==========================================")
RETURN NIL
