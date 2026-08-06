#Include "Protheus.ch"

User Function CRIAGATILHOS()

    // Gatilho 1: Buscar Fornecedor na ZZ1
    SX7("ZZ2", "ZZ2_CONFOR", 1, "Posicione", 'POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ2_CONFOR,"ZZ1_FORNEC")', "ZZ2")

    // Gatilho 2: Buscar Loja na ZZ1
    SX7("ZZ2", "ZZ2_CONFOR", 2, "Posicione", 'POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ2_CONFOR,"ZZ1_LOJAFO")', "ZZ2")

    // Gatilho 3: Buscar Nome do Fornecedor na SA2
    SX7("ZZ2", "ZZ2_CONFOR", 3, "Posicione", 'POSICIONE("SA2",1,xFilial("SA2")+M->ZZ2_FORNEC+M->ZZ2_LOJAFO,"A2_NOME")', "ZZ2")

    MsgInfo("Gatilhos da ZZ2 criados com sucesso!", "Concluído")

Return