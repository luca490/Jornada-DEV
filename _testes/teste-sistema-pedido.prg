FUNCTION Main()

    LOCAL cCliente := ""
    LOCAL cValorPedido := ""
    LOCAL cEstoqueDisponivel := ""
    LOCAL cClienteBloqueado := ""
    LOCAL nValorPedido := 0
    LOCAL nEstoqueDisponivel := 0

    QOut("=========================")
    QOut("--- Sistema de Pedido ---")
    QOut("=========================")
    
    hb_idlesleep(1)

    ACCEPT "Digite o nome do cliente: " TO cCliente
    ACCEPT "Digite o valor do pedido: " TO cValorPedido
    ACCEPT "Digite a quantidade em estoque: " TO cEstoqueDisponivel
    ACCEPT "O cliente esta bloqueado? (S/N): " TO cClienteBloqueado
    nValorPedido := VAL(cValorPedido)
    nEstoqueDisponivel := VAL(cEstoqueDisponivel)
    
    hb_idlesleep(1)
    
    QOut("...")
    QOut("Aguardando aprovacao...")
    QOut("...")
    hb_idlesleep(1)

    IF cClienteBloqueado == "S"
        QOut("PEDIDO NEGADO! - Cliente Negado.")
    ELSEIF cClienteBloqueado == "N"
        IF nEstoqueDisponivel < nValorPedido
            QOut("PEDIDO NEGADO! - Sem estoque.")
        ELSEIF nValorPedido > 10000
            Qout("PEDIDO NECESSITA DE APROVAÇAO!")
        ELSE 
            QOut("PEDIDO APROVADO!")
        ENDIF
    ENDIF

RETURN NIL
