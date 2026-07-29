#include "protheus.ch"

USER FUNCTION STTIP001()

    // Cadastro de Pets (ZA1)
    // Exemplo de registros cadastrados para teste:
    // 01 | TODDYNHO | GATO SIAMÊS | 12/12/2012 | Cliente 01 | Loja 01
    // 11 | REX      | CACHORRO PITBULL | 09/04/2020 | Cliente 01 | Loja 02
    // Print salvo com inclusão correta no dir: \evidencias\evidencia.png
    PRIVATE cCadastro := "Pets"

    dbSelectArea("ZA1")
    dbSetOrder(1)

    // Abre a rotina padrão de cadastro
    AxCadastro("ZA1", "Pets", , "1", , , , .F.)

RETURN NIL
