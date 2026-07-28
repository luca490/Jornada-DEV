# Exercício 1 — Conceitos fundamentais

## a. Qual é a função do AppServer?

O AppServer é o servidor de aplicação do Protheus. Ele é responsável por executar as regras de negócio, processar os programas em AdvPL e realizar a comunicação entre o SmartClient e o banco de dados.

---

## b. O que é o RPO?

O RPO (Repository Protheus Object) é o repositório onde ficam armazenados os programas compilados do Protheus. O AppServer utiliza o RPO para encontrar e executar as rotinas do sistema.

---

## c. Para que serve o Configurador (SIGACFG)?

O SIGACFG é utilizado para configurar e personalizar o ambiente Protheus. Nele é possível criar tabelas, campos, índices, parâmetros e alterar o dicionário de dados do sistema.

---

## d. Qual a diferença entre campo Real e campo Virtual no SX3?

O campo Real é armazenado fisicamente no banco de dados, possuindo uma coluna na tabela. O campo Virtual não é gravado no banco, sendo calculado ou preenchido durante a execução do sistema.