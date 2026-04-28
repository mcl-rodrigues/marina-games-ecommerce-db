# 📊 Sistema de E-commerce + Serviços (SQL)

Este projeto consiste na modelagem completa de um banco de dados relacional para um sistema de **e-commerce com suporte a serviços técnicos**, desenvolvido utilizando **MySQL**.

O objetivo é simular um ambiente real de aplicação, incluindo cadastro de usuários, catálogo de produtos, pedidos, pagamentos, estoque e ordens de serviço.

---

## 🚀 Funcionalidades modeladas

- Cadastro de usuários e endereços
- Catálogo de produtos e serviços
- Controle de estoque
- Sistema de pedidos com múltiplos itens
- Processamento de pagamentos
- Gestão de ordens de serviço
- Relacionamentos com integridade referencial (FKs)

---

## 🧠 Objetivo do projeto

Simular um ambiente real de banco de dados, aplicando conceitos de modelagem relacional, integridade referencial e consultas SQL em um cenário de e-commerce com serviços.

Aqui eu exercito:

- Modelagem relacional
- Criação de tabelas com constraints
- Uso de chaves estrangeiras (FK)
- Escrita de queries SQL (simples e avançadas)
- Organização de scripts SQL
- Simulação de dados realistas (seeds)

---

## 🛠️ Tecnologias utilizadas

- MySQL
- SQL (DDL + DML)

---

## ▶️ Como utilizar

### ⚠️ Pré-requisitos

- Ter o MySQL instalado (versão 8+ recomendada)
- Acesso ao cliente MySQL (CLI, DBeaver, MySQL Workbench, etc.)

---

### 📥 Passos

> Certifique-se de que o MySQL esteja em execução.

1. Clone o repositório e acesse o diretório do projeto

```bash
git clone https://github.com/mcl-rodrigues/marina-games-ecommerce-db.git
cd marina-games-ecommerce-db
```

2. Acesse o cliente MySQL:

```bash
mysql -u root -p
```

> Será solicitada a senha do usuário.

3. Execute o script de criação do banco:

```sql
SOURCE scripts/run_all.sql;
```
