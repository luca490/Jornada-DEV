FUNCTION Main()
    LOCAL cNomeFuncionario      := "Lucas de Lima Oliveira"
    LOCAL nSalarioBruto         := 10000.00
    LOCAL lAtivo                := .T.
    LOCAL dDataAdmissao         := Date()
    LOCAL nCodigoDepartamento   := 10

    Set( _SET_DATEFORMAT, "dd/mm/yyyy" )
    hb_cdpSelect("PT850")

    QOut("==========================================")
    QOut("      DADOS DO FUNCIONARIO")
    QOut("=========================================")
    QOut("Nome:                  " + cNomeFuncionario)
    QOut("Salario Bruto:         R$ " + Str(nSalarioBruto, 10, 2))
    QOut("Ativo:                 " + IIF(lAtivo, "Verdadeiro", "Falso"))
    QOut("Data de Admissao:      " + DToC(dDataAdmissao))
    QOut("Codigo Departamento:  " + Str(nCodigoDepartamento, 3))
    QOut("==========================================")
RETURN NIL
