# 📋 Sistema de Controle ISO 9001 para Protheus

## 👤 Autor

**Lucas de Lima Oliveira**

## 📌 Sobre o Projeto

Este projeto foi desenvolvido como Trabalho de Conclusão de Curso (TCC) e consiste em uma customização no ERP **Protheus** da TOTVS, utilizando a linguagem **ADVPL**, para implementar um sistema de gestão de certificados de fornecedores e ocorrências de não conformidade, alinhado aos requisitos da norma **ISO 9001:2015**.

A solução tem como foco auxiliar empresas na manutenção da conformidade documental, rastreabilidade de processos e melhoria contínua da qualidade.

## 🎯 Objetivos

- Desenvolver rotinas personalizadas no Protheus para o controle de certificações de fornecedores.
- Permitir o registro e acompanhamento de ocorrências de não conformidade.
- Garantir a integridade e validação dos dados inseridos no sistema.
- Oferecer uma interface funcional e intuitiva para os usuários finais.
- Automatizar regras de negócio por meio de gatilhos e validações.

## 🛠️ Tecnologias Utilizadas

| Tecnologia | Finalidade |
|------------|------------|
| **ADVPL** | Linguagem de programação utilizada no desenvolvimento das rotinas. |
| **Protheus 8** | ERP da TOTVS onde a solução foi implementada. |
| **MPSDU** | Ferramenta para criação e manutenção do dicionário de dados. |
| **SIGACFG** | Configuração de menus, parâmetros e ambiente. |
| **SIGACOM** | Módulo de Compras e Gestão de Fornecedores. |
| **DBF** | Banco de dados nativo utilizado pelo Protheus. |

## 📁 Estrutura do Projeto

```text
TCC/
│
├── README.md
├── STTZZ1.PRW
├── STTZZ2.PRW
├── STTZZLIB.PRW
│
└── evidencias/
    ├── tela_principal.png
    ├── cadastro_certificados.png
    ├── cadastro_ocorrencias.png
    └── ...
```

## ✨ Funcionalidades

- ✅ Cadastro de certificados de fornecedores.
- ✅ Controle de validade, emissão e renovação dos certificados.
- ✅ Registro de ocorrências de não conformidade.
- ✅ Classificação das ocorrências por gravidade.
- ✅ Validação automática dos dados informados.
- ✅ Tratamento de erros com mensagens amigáveis.
- ✅ Menu personalizado integrado ao Protheus.
- ✅ Consultas e filtros para facilitar a localização das informações.
## 🗄️ Estrutura das Tabelas

O sistema utiliza duas tabelas customizadas no Protheus para armazenar as informações relacionadas ao controle de certificados de fornecedores e às ocorrências de não conformidade.

### Tabela ZZ1 — Controle de Fornecimento

A tabela `ZZ1` é responsável pelo armazenamento dos dados dos certificados e pelo acompanhamento dos indicadores de conformidade dos fornecedores.

**Acesso:** Compartilhado

| Campo | Descrição | Tipo | Tamanho | Decimais | Contexto |
|---|---|:---:|---:|---:|---|
| `ZZ1_FILIAL` | Filial | C | 2 | 0 | Real |
| `ZZ1_CODIGO` | Código | C | 6 | 0 | Real |
| `ZZ1_FORNEC` | Código do fornecedor | C | 6 | 0 | Real |
| `ZZ1_LOJAFO` | Loja do fornecedor | C | 2 | 0 | Real |
| `ZZ1_NOMEFO` | Nome do fornecedor | C | 40 | 0 | Virtual |
| `ZZ1_CERTIF` | Dados do certificado | C | 20 | 0 | Real |
| `ZZ1_VALCER` | Validade do certificado | D | 8 | 0 | Real |
| `ZZ1_TOLERA` | Tolerância (%) | N | 2 | 0 | Real |
| `ZZ1_TOTOK` | Quantidade conforme | N | 12 | 0 | Real |
| `ZZ1_TOTNOK` | Quantidade não conforme | N | 12 | 0 | Real |

#### Índices da ZZ1

| Ordem | Chave | Descrição |
|---:|---|---|
| 1 | `ZZ1_FILIAL + ZZ1_CODIGO` | Chave primária |
| 2 | `ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO` | Consulta por fornecedor |
| 3 | `ZZ1_FILIAL + DTOS(ZZ1_VALCER)` | Consulta por validade do certificado |

### Tabela ZZ2 — Ocorrências do Fornecedor

A tabela `ZZ2` armazena as ocorrências relacionadas aos fornecedores, permitindo registrar quantidades conformes e não conformes, produtos, valores e informações sobre cada ocorrência.

**Acesso:** Compartilhado

| Campo | Descrição | Tipo | Tamanho | Decimais | Contexto |
|---|---|:---:|---:|---:|---|
| `ZZ2_FILIAL` | Filial | C | 2 | 0 | Real |
| `ZZ2_CONFOR` | Controle relacionado à ZZ1 | C | 6 | 0 | Real |
| `ZZ2_FORNEC` | Código do fornecedor | C | 6 | 0 | Real |
| `ZZ2_LOJAFO` | Loja do fornecedor | C | 2 | 0 | Real |
| `ZZ2_NOMEFO` | Nome do fornecedor | C | 40 | 0 | Virtual |
| `ZZ2_DATA` | Data da ocorrência | D | 8 | 0 | Real |
| `ZZ2_HORA` | Hora da ocorrência | C | 5 | 0 | Real |
| `ZZ2_CODPRO` | Código do produto | C | 15 | 0 | Real |
| `ZZ2_QTDOK` | Quantidade conforme | N | 12 | 0 | Real |
| `ZZ2_QTDNOK` | Quantidade não conforme | N | 12 | 0 | Real |
| `ZZ2_VLRUNI` | Valor unitário | N | 12 | 2 | Real |
| `ZZ2_TOTOK` | Valor total conforme | N | 12 | 2 | Virtual |
| `ZZ2_TOTNOK` | Valor total não conforme | N | 12 | 2 | Virtual |

#### Índices da ZZ2

| Ordem | Chave | Descrição |
|---:|---|---|
| 1 | `ZZ2_FILIAL + ZZ2_CONFOR + DTOS(ZZ2_DATA) + ZZ2_HORA` | Chave primária |
| 2 | `ZZ2_FILIAL + ZZ2_FORNEC + ZZ2_LOJAFO + DTOS(ZZ2_DATA)` | Consulta por fornecedor e data |
| 3 | `ZZ2_FILIAL + DTOS(ZZ2_DATA)` | Consulta por data |

### 🔢 Campos Virtuais e Fórmulas

Alguns campos são definidos como virtuais e têm seus valores obtidos por meio de consultas ou cálculos realizados pelo sistema.

| Campo | Tabela | Funcionamento |
|---|---|---|
| `ZZ1_NOMEFO` | ZZ1 | Busca o nome do fornecedor na tabela `SA2`, utilizando o código do fornecedor (`A2_COD`) e a loja (`A2_LOJA`). |
| `ZZ2_NOMEFO` | ZZ2 | Utiliza a mesma lógica da `ZZ1`, buscando o nome do fornecedor na tabela `SA2`. |
| `ZZ2_TOTOK` | ZZ2 | Calcula o valor total conforme através da multiplicação da quantidade conforme pelo valor unitário: `ZZ2_QTDOK × ZZ2_VLRUNI`. |
| `ZZ2_TOTNOK` | ZZ2 | Calcula o valor total não conforme através da multiplicação da quantidade não conforme pelo valor unitário: `ZZ2_QTDNOK × ZZ2_VLRUNI`. |

### 🔗 Relacionamento entre as Tabelas

A tabela `ZZ2` possui o campo `ZZ2_CONFOR`, utilizado para relacionar as ocorrências ao registro correspondente da tabela `ZZ1`.

Dessa forma, a estrutura permite associar as ocorrências de não conformidade aos respectivos controles de fornecimento e certificados cadastrados.

Além disso, os campos de fornecedor e loja (`ZZ1_FORNEC`, `ZZ1_LOJAFO`, `ZZ2_FORNEC` e `ZZ2_LOJAFO`) permitem identificar e consultar os fornecedores relacionados aos registros.

## 📸 Evidências

As capturas de tela do sistema podem ser encontradas na pasta:

```text
evidencias/
```

Nela estão disponíveis exemplos da interface, cadastros realizados e testes de funcionamento das rotinas.

## 📚 Conceitos Aplicados

- Desenvolvimento em ADVPL
- Criação de tabelas customizadas
- Dicionário de Dados (SX2, SX3 e SX5)
- Índices e relacionamentos
- Menus personalizados
- Validações de campos
- Gatilhos (Triggers)
- Manipulação de arquivos DBF
- Interface padrão do Protheus
- Integração com módulos do ERP

## 📄 Licença

Este projeto foi desenvolvido exclusivamente para fins acadêmicos como Trabalho de Conclusão de Curso (TCC).

A reprodução, distribuição ou utilização comercial deste projeto depende de autorização prévia do autor.