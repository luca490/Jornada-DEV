#Include "Protheus.ch"

// -------------------------------------------------------------
// Função 1: Buscar o nome do fornecedor na SA2
// -------------------------------------------------------------
User Function NomeFornecedor(cFornec, cLoja)
    Local cNome := ""
    DbSelectArea("SA2")
    DbSetOrder(1)
    If DbSeek(xFilial("SA2") + cFornec + cLoja)
        cNome := SA2->A2_NOME
    EndIf
Return cNome

// -------------------------------------------------------------
// Função 2: Buscar a descrição do produto na SB1
// -------------------------------------------------------------
User Function NomeProduto(cCodPro)
    Local cDesc := ""
    DbSelectArea("SB1")
    DbSetOrder(1)
    If DbSeek(xFilial("SB1") + cCodPro)
        cDesc := SB1->B1_DESC
    EndIf
Return cDesc

// -------------------------------------------------------------
// Função 3: Calcular o percentual de não conformidade
// -------------------------------------------------------------
User Function PercNaoConforme(nOk, nNok)
    Local nTotal := nOk + nNok
    Local nPerc  := 0
    If nTotal > 0
        nPerc := (nNok / nTotal) * 100
    EndIf
Return nPerc

// -------------------------------------------------------------
// Função 4: Verificar se o certificado vence em até 30 dias
// -------------------------------------------------------------
User Function CertificadoVencendo(dValCer)
    Local dVence := dDataBase + 30
Return (dValCer <= dVence)