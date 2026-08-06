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

## 🚀 Como Executar

### 1. Compilar os fontes

Compile os arquivos `.PRW` utilizando o compilador ADVPL para gerar os objetos no ambiente Protheus.

### 2. Criar as tabelas

Utilize o **MPSDU** para criar/importar as estruturas das tabelas personalizadas (`ZZ1` e `ZZ2`) no dicionário de dados.

### 3. Configurar o menu

No **SIGACFG**, adicione as rotinas personalizadas ao menu do sistema apontando para:

- `STTZZ1`
- `STTZZ2`

### 4. Executar o cadastro de certificados

Acesse a rotina **STTZZ1** para cadastrar e gerenciar certificados de fornecedores.

### 5. Executar o cadastro de ocorrências

Acesse a rotina **STTZZ2** para registrar e acompanhar ocorrências de não conformidade.

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
