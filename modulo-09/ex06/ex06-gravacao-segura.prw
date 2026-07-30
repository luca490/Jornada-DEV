//Programa utilizado em duas partes: STTIP003.PRW
#include "protheus.ch"

/*/{Protheus.doc} STTIP003SALVAR
    Salva um contato utilizando transação
/*/

User Function STTIP003SALVAR()

    Local cCliente := ""
    Local cAssunto := ""
    Local oErro
    Local cCodigo

    //==================================================
    // DADOS
    //==================================================

    cCliente := "Lucas"
    cAssunto := "Primeiro Contato"

    //==================================================
    // VALIDACOES
    //==================================================

    If Empty(AllTrim(cCliente))
        Break("Cliente obrigatório.")
    EndIf

    If Empty(AllTrim(cAssunto))
        Break("Assunto obrigatório.")
    EndIf

    //==================================================
    // TRANSACAO
    //==================================================

    BeginTran()

    BEGIN SEQUENCE

        dbSelectArea("SZ1")
        dbSetOrder(1)

        cCodigo := StrZero(RecCount()+1,6)

        RecLock("SZ1", .T.)

            SZ1->Z1_FILIAL  := xFilial("SZ1")
            SZ1->Z1_COD     := cCodigo
            SZ1->Z1_CLIENTE := cCliente
            SZ1->Z1_ASSUNTO := cAssunto
            SZ1->Z1_DATA    := Date()

        MsUnlock()

        CommitTran()

        MsgInfo("Contato gravado com sucesso!")

    RECOVER USING oErro

        RollBackTran()

        MsgStop("Não foi possível salvar o contato.")

        U_GRAVARLOG("STTIP003SALVAR", oErro)

    END SEQUENCE

Return
