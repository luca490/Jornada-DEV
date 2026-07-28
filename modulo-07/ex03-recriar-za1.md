# Exercício 3 — Recriando a ZA1 no Configurador

## Passos realizados

1. Acessar o módulo SIGACFG (Configurador).

2. Abrir o dicionário de dados.

3. Criar a tabela ZA1 no SX2.

4. Configurar a tabela como compartilhada.

5. Criar os campos no SX3:

ZA1_FILIAL
ZA1_CODIGO
ZA1_NOME
ZA1_RACA
ZA1_DTNASC

6. Criar o índice no SIX:


ZA1_FILIAL + ZA1_CODIGO


7. Executar a rotina de atualização/reconhecimento da tabela pelo framework.

8. Conferir a estrutura final utilizando o MPSDU.

---

## Dificuldades encontradas

- Encontrar os caminhos corretos dentro do SIGACFG.
- Configurar corretamente os campos obrigatórios.
- Respeitar o tamanho máximo dos títulos dos campos.
- Atualizar o reconhecimento da tabela para que ela apareça corretamente no ambiente.