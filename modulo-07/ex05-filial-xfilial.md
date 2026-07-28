# Exercício 5 — A1_FILIAL e xFilial()

## a. Por que existe o campo A1_FILIAL?

O campo A1_FILIAL identifica a qual filial pertence determinado registro. O Protheus utiliza esse controle porque uma mesma base pode possuir várias empresas e filiais, permitindo separar corretamente os dados.

Toda tabela precisa possuir um campo de filial para controlar o compartilhamento e organização dos registros.

---

## b. O que a função xFilial() tem a ver com isso?

A função xFilial() retorna automaticamente a filial atual do ambiente, evitando que o programador informe uma filial manualmente.

Caso um programa escrevesse a filial diretamente, poderia gravar informações na filial errada e causar problemas em ambientes com várias filiais.

Exemplo:

Errado:

ZA1->ZA1_FILIAL := "01"

Correto:

ZA1->ZA1_FILIAL := xFilial("ZA1")
