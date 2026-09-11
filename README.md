# Modelagem de Banco de Dados — Clínica Veterinária

---

## 📌 Sobre o Trabalho

Este projeto apresenta a modelagem de um banco de dados desenvolvido para o cenário de uma **Clínica Veterinária**. 

O trabalho contempla o fluxo completo de modelagem de dados, partindo do cenário proposto na atividade acadêmica até a implementação física, abrangendo a definição de entidades, relacionamentos, esquema relacional, dicionário de dados e script SQL.

> **Curso:** Tecnologia em Análise e Desenvolvimento de Sistemas (TADS)  
> **Autor:** Gustavo Ferreira do Amaral

---

## 🏛️ Entidades

O sistema foi estruturado com base nas seguintes entidades principais:

* **Clientes**
* **Animais**
* **Veterinários**
* **Consultas**

---

## 🔗 Relacionamentos

As regras de negócio e cardinais mapeadas entre as entidades são:

* Um **cliente** pode ter vários **animais**.
* Um **animal** pertence a apenas um **cliente**.
* Um **animal** pode ter várias **consultas**.
* Um **veterinário** pode realizar várias **consultas**.

---

## 📁 Arquivos do Projeto

| Arquivo | Descrição | Fase |
| :--- | :--- | :---: |
| `1_modelo_conceitual.pdf` | Diagrama Entidade-Relacionamento (DER) do modelo conceitual | Fase 1 |
| `3_dicionario_dados.pdf` | Documentação contendo o Esquema Relacional e o Dicionário de Dados Simplificado | Fase 2 |
| `4_script_fisico.sql` | Script DDL com comandos SQL para criação de tabelas e chaves no MySQL Workbench | Fase 3 |
| `clinica_vet.mwb` | Arquivo do modelo lógico e físico no MySQL Workbench | - |

---

## 🛠️ Ferramentas Utilizadas

* **MySQL Workbench**
* **GitHub**

---

## 👨‍💻 Autor

* **Gustavo Ferreira do Amaral**
