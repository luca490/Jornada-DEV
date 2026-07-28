#include "dbstruct.ch"

FUNCTION Main()

	LOCAL nCodigo
	LOCAL cNome
	LOCAL cTelefone
	LOCAL cEmail
	LOCAL aEstrutura := {}
	AADD(aEstrutura, {"CODIGO", "N", 4, 0})
	AADD(aEstrutura, {"NOME", "C", 40, 0})
	AADD(aEstrutura, {"TELEFONE", "C", 15, 0})
	AADD(aEstrutura, {"EMAIL", "C", 50, 0})

	IF !File("AGENDA.DBF")
		DBCREATE("AGENDA.DBF", aEstrutura)
	ENDIF

	USE AGENDA NEW
	LOCAL nOpcao := 0
	DO WHILE nOpcao <> 4

		CLS

		? "===== AGENDA ====="
		?
		? "1 - Cadastrar"
		? "2 - Listar"
		? "3 - Buscar"
		? "4 - Sair"

		ACCEPT "Opcao: " TO nOpcao
		DO CASE

		CASE Val(nOpcao) == 1
			ACCEPT "Codigo: " TO nCodigo
			ACCEPT "Nome: " TO cNome
			ACCEPT "Telefone: " TO cTelefone
			ACCEPT "Email: " TO cEmail
			APPEND BLANK

			REPLACE CODIGO WITH Val(nCodigo)
			REPLACE NOME WITH cNome
			REPLACE TELEFONE WITH cTelefone
			REPLACE EMAIL WITH cEmail

		CASE Val(nOpcao) == 2

			GO TOP

			DO WHILE !EOF()

				? "Codigo:", CODIGO
				? "Nome:", NOME
				? "Telefone:", TELEFONE
				? "Email:", EMAIL
				? "-----------------------"

				SKIP

			ENDDO

			WAIT "Pressione ENTER"

		CASE Val(nOpcao) == 3

			LOCAL nBusca

			ACCEPT "Digite o codigo: " TO nBusca

			GO TOP

			DO WHILE !EOF()

				IF CODIGO == Val(nBusca)

					? "Nome:", NOME
					? "Telefone:", TELEFONE
					? "Email:", EMAIL

					EXIT

				ENDIF

				SKIP

			ENDDO

			WAIT "ENTER"

		CASE Val(nOpcao) == 4
			EXIT

		ENDCASE

	ENDDO
	CLOSE DATABASES

RETURN NIL
