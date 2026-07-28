# Exercício 2 — Tabela ZA1 (Pets)

## a. Campos da tabela ZA1

| Campo | Tipo | Tamanho |
|-------|------|---------|
| ZA1_FILIAL | Caracter | 2 |
| ZA1_CODIGO | Caracter | 6 |
| ZA1_NOME | Caracter | 40 |
| ZA1_RACA | Caracter | 30 |
| ZA1_DTNASC | Data | 8 |

---

## b. Que índice faria sentido para a ZA1? Justifique.

Um índice adequado para a tabela ZA1 seria:

ZA1_FILIAL + ZA1_CODIGO

Esse índice permite localizar cada pet de forma única dentro de uma filial. Assim como uma lista telefônica possui uma organização para encontrar rapidamente um contato, o índice facilita a busca dos registros.

---

## c. Por que o prefixo da tabela é Z?

O prefixo Z indica que a tabela é uma customização criada pelo usuário ou desenvolvedor. No Protheus, as tabelas iniciadas com Z são reservadas para personalizações, evitando conflitos com tabelas padrões do sistema.

---

## d. Por que os campos começam com ZA1_?

Os campos começam com o prefixo da tabela para seguir o padrão de nomenclatura do Protheus. Isso facilita identificar a origem do campo e evita conflitos entre tabelas diferentes.

Exemplo:

ZA1_NOME
Significa que o campo NOME pertence à tabela ZA1.