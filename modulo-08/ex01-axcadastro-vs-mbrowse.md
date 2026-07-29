# Exercício — AxCadastro, mBrowse, aColors e SX7

## a. Quando você usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

O **AxCadastro** é utilizado quando precisamos de um cadastro simples e rápido, onde o usuário apenas inclui, altera, visualiza e exclui registros de uma tabela.

Exemplo:
- Cadastro de clientes simples.
- Cadastro de pets na tabela ZA1.

O **mBrowse** é utilizado quando precisamos de uma tela mais personalizada para consulta e manipulação de dados, permitindo criar filtros, legendas, botões e regras específicas.

Exemplo:
- Uma tela de consulta de pedidos com filtros por cliente, data e status.

---

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

O **mBrowse** possui recursos mais avançados, como:

1. Criação de legendas coloridas utilizando o array `aColors`, permitindo identificar visualmente situações diferentes.

2. Criação de filtros personalizados para facilitar a busca de registros.

3. Personalização da tela com botões, ações e regras específicas para o usuário.

---

## c. Na configuração de legendas (aColors), por que a regra ".T." deve ficar por último?

A regra `.T.` representa uma condição sempre verdadeira, ou seja, ela será aplicada para qualquer registro que não atender às condições anteriores.

Por isso, ela deve ficar por último, funcionando como uma regra padrão. Caso ela esteja antes das outras regras, todas as linhas seriam identificadas por ela e as condições seguintes nunca seriam executadas.

---

## d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

O campo Virtual (`X3_RELACAO`) não grava nenhuma informação no banco de dados. Ele apenas busca ou calcula um valor no momento da exibição do registro.

Já o gatilho (`SX7`) executa uma ação quando determinado campo é preenchido ou alterado, podendo buscar informações e gravar o resultado em outro campo.

Exemplo:

- Campo Virtual:
  - Ao abrir um pedido, mostra o nome do cliente consultando a tabela SA1, sem salvar o nome.

- Gatilho SX7:
  - Ao informar o código do cliente, automaticamente preenche e grava o nome do cliente no campo correspondente.