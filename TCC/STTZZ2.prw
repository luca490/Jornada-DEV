#Include "Protheus.ch"

User Function STTZZ2(cCodigoZZ1)

    Local cAlias := "ZZ2"
    Local lOK    := .T.
    Local cFiltro := ""
    Local aLegenda := {}
    Local aIgnorar := {}  // Array para ignorar os campos virtuais

    // Legenda para a ZZ2
    aAdd(aLegenda, { "Vermelho", "Acima da tolerância do certificado" })
    aAdd(aLegenda, { "Verde",    "Dentro da tolerância do certificado" })

    // Ignorar campos virtuais que causam erro
    aAdd(aIgnorar, "ZZ2_NOMEFO")
    aAdd(aIgnorar, "ZZ2_TOTOK")
    aAdd(aIgnorar, "ZZ2_TOTNOK")

    // Se foi passado um código, monta o filtro
    If !Empty(cCodigoZZ1)
        cFiltro := "ZZ2_CONFOR == '" + cCodigoZZ1 + "'"
    EndIf

    BEGIN SEQUENCE

        DbSelectArea(cAlias)
        DbSetOrder(1)

        AxCadastro(cAlias, "Ocorrências do Fornecedor",,,,, cFiltro,,,, aLegenda,,,, "u_CorLinhaZZ2",,, aIgnorar)

    RECOVER USING oErro

        MsgStop("Ocorreu um erro ao tentar acessar a tabela ZZ2. Verifique os dados.", "Erro no Sistema")
        If lOK
            Rollback()
        EndIf

    END SEQUENCE

Return

// -------------------------------------------------------------
// Função de cor da ZZ2
// -------------------------------------------------------------
User Function CorLinhaZZ2()

    Local nQtdOk  := ZZ2->ZZ2_QTDOK
    Local nQtdNok := ZZ2->ZZ2_QTDNOK
    Local nPerc   := 0
    Local nTol    := 0
    Local nCor    := 0
    Local cControle := ""

    If nQtdOk == 0 .And. nQtdNok == 0
        Return 0
    EndIf

    nPerc := PercNaoConforme(nQtdOk, nQtdNok)

    cControle := ZZ2->ZZ2_CONFOR
    DbSelectArea("ZZ1")
    DbSetOrder(1)
    If DbSeek(xFilial("ZZ1") + cControle)
        nTol := ZZ1->ZZ1_TOLERA
    EndIf

    If nPerc > nTol
        nCor := CLR_RED
    Else
        nCor := CLR_GREEN
    EndIf

Return nCor

// -------------------------------------------------------------
// Função de validação
// -------------------------------------------------------------
User Function ValidaZZ2()

    Local lValido := .T.

    If !ExistCpo("ZZ1", xFilial("ZZ1") + M->ZZ2_CONFOR, 1)
        MsgStop("Código de Controle não encontrado na tabela ZZ1!", "Erro")
        lValido := .F.
    EndIf

    If !ExistCpo("SB1", xFilial("SB1") + M->ZZ2_CODPRO, 1)
        MsgStop("Produto não encontrado na tabela SB1!", "Erro")
        lValido := .F.
    EndIf

    If M->ZZ2_DATA > dDataBase
        MsgStop("A data da ocorrência não pode ser futura!", "Erro")
        lValido := .F.
    EndIf

Return lValido