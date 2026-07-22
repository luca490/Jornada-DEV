FUNCTION Main()

    LOCAL cIdade := ""
    LOCAL cDependentes := ""
    LOCAL nIdade := 0
    LOCAL nDependentes := 0
    LOCAL nValorPlano := 0
    LOCAL nValorTotal := 0

    QOut("=======================================")
    QOut("---------PLANO DE SAUDE HARBOUR--------")
    QOut("=======================================")

    ACCEPT "Digite sua idade: " TO cIdade
    ACCEPT "Digite o numero de dependentes: " TO cDependentes
    nIdade := Val(cIdade)
    nDependentes := Val(cDependentes)

    DO CASE
    CASE nIdade <= 25 ; nValorPlano := 180
    CASE nIdade <= 40 ; nValorPlano := 260
    CASE nIdade <= 60 ; nValorPlano := 380
    OTHERWISE ; nValorPlano := 520
    ENDCASE
    nValorTotal := nValorPlano + (nDependentes * 90)

    QOut("Valor total mensal: R$ " + str(nValorTotal))

RETURN NIL
