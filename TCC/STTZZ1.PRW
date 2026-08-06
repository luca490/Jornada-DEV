#Include "Protheus.ch"
//---------------------
User Function STTZZ1()

    Local cAlias := "ZZ1"
    Local lOK    := .T.
    Local aBotoes := {}
    Local aLegenda := {}
    Local aIgnorar := {}  // Array para ignorar campos virtuais

    // Botão Ocorrências
    aAdd(aBotoes, { "Ocorrências", "u_STTZZ2FLT", "Consultar ocorrências deste controle", .F. })

    // Legenda
    aAdd(aLegenda, { "Vermelho", "Certificado vencido" })
    aAdd(aLegenda, { "Amarelo",  "Vence em até 30 dias" })
    aAdd(aLegenda, { "Verde",    "Certificado OK" })

    // --- CORREÇÃO DEFINITIVA: Ignorar o campo virtual na inclusão e na edição ---
    aAdd(aIgnorar, "ZZ1_NOMEFO") 

    BEGIN SEQUENCE

        DbSelectArea(cAlias)
        DbSetOrder(1)

        // Passamos o array aIgnorar no final do AxCadastro
        AxCadastro(cAlias,,,,,,,, aLegenda,,,,,, aBotoes, aIgnorar)

    RECOVER USING oErro

        MsgStop("Ocorreu um erro ao tentar acessar a tabela. Verifique os dados e tente novamente.", "Erro no Sistema")
        If lOK
            Rollback()
        EndIf
        GravarLogTCC("STTZZ1", oErro)

    END SEQUENCE

Return

// -------------------------------------------------------------
// Função do botão Ocorrências
// -------------------------------------------------------------
User Function STTZZ2FLT()

    Local cCodigo := ""

    DbSelectArea("ZZ1")
    If !EOF()
        cCodigo := ZZ1->ZZ1_CODIGO
    Else
        MsgAlert("Nenhum registro selecionado!", "Aviso")
        Return
    EndIf

    u_STTZZ2(cCodigo)

Return
