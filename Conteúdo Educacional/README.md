# 🗄️ DDL e DML — Conceitos Fundamentais em SQL.

# 📘 Introdução

No contexto de bancos de dados relacionais, SQL é dividido em subconjuntos de comandos, sendo dois dos principais:

DDL (Data Definition Language) e DML (Data Manipulation Language)

Essas duas categorias são essenciais para criar, organizar e manipular dados dentro de um sistema de gerenciamento de banco de dados (SGBD).

# 🧱 DDL — Data Definition Language

📌 O que é?

DDL é o conjunto de comandos SQL responsável por definir a estrutura do banco de dados. Com ele, você cria, altera e remove bancos, tabelas, índices e outros objetos.
É utilizado pelos SGBDs como MySQL, PostgreSQL, Oracle e SQL Server para definir a arquitetura dos dados, não necessariamente manipulando registros.

🛠️ Principais Comandos DDL:

| Comando    | Função                                                               |
| ---------- | -------------------------------------------------------------------- |
| `CREATE`   | Cria bancos de dados, tabelas, views, índices, etc.                  |
| `ALTER`    | Modifica estruturas já existentes (colunas, tipos, constraints).     |
| `DROP`     | Remove tabelas, bancos ou objetos permanentemente.                   |
| `TRUNCATE` | Remove *todos os registros* de uma tabela, mas mantém sua estrutura. |
| `RENAME`   | Renomeia tabelas ou objetos.                                         |

🧾 Exemplo:

Criar uma tabela

| CREATE TABLE Cliente (                     |   
|--------------------------------------------|
| id_cliente INT PRIMARY KEY AUTO_INCREMENT, |   
| nome VARCHAR(100),                         |   
| endereco VARCHAR(255),                     |  
| telefone VARCHAR(20),                      |  
| cpf_cnpj VARCHAR(20)                       |  
| );                                         |  

# 📦 DML — Data Manipulation Language

📌 O que é?

DML é o conjunto de comandos utilizado para manipular os dados dentro das tabelas já criadas. Ele lida diretamente com os registros: inserir, atualizar, remover e consultar (em alguns contextos). Esses comandos operam sobre os dados e podem ou não precisar de COMMIT dependendo do SGBD.

🛠️ Principais Comandos DML

| Comando   | Função                                                                   |
| --------- | ------------------------------------------------------------------------ |
| `INSERT`  | Adiciona um novo registro.                                               |
| `UPDATE`  | Modifica registros existentes.                                           |
| `DELETE`  | Remove registros.                                                        |
| `SELECT`* | Consulta dados (classificado por alguns como DQL — Data Query Language). |


Observação: SELECT é frequentemente listado separadamente como DQL, mas muitos sites e materiais acadêmicos o incluem dentro de DML.

🧾 Exemplo: 

| CREATE TABLE Livro (                              | 
|---------------------------------------------------|
| id_livro INT PRIMARY KEY AUTO_INCREMENT,          |   
| titulo VARCHAR(150),                              |   
| autor_id INT,                                     |   
| editora VARCHAR(100),                             |   
| isbn VARCHAR(20),                                 |   
| assunto VARCHAR(50),                              |  
| estoque INT,                                      |   
| FOREIGN KEY (autor_id) REFERENCES Autor(id_autor) |   


# 🔍 Diferenças Entre DDL e DML

| DDL                         | DML                                    |
| --------------------------- | -------------------------------------- |
| Define a estrutura do banco | Manipula os dados dentro da estrutura  |
| Comandos alteram o schema   | Comandos alteram registros             |
| Efetua mudanças permanentes | Depende de transação (COMMIT/ROLLBACK) |
| Afeta a organização         | Afeta o conteúdo                       |


# Outros subconjuntos:
Além do DDL e DML, existem outros subconjuntos dentre eles são:

| Sigla   | Nome                    | Função Principal                   | Comandos Comuns   | Descrição                                                                                                                                |
| ------- | ----------------------- | ---------------------------------- | ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| **DQL** | *Data Query Language*   | Consultar dados                    | `SELECT`          | Responsável por realizar **consultas** no banco de dados. Permite filtrar, ordenar, agrupar e projetar informações sem alterar os dados. |
| **DCL** | *Data Control Language* | Controle de permissões e segurança | `GRANT`, `REVOKE` | Usado para **gerenciar acesso**, permissões e direitos de usuários no banco. Define quem pode consultar, alterar ou administrar objetos. 
| **TCL** | *Transaction Control Language* | Usada para gerenciar transações no banco de dados | `BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK` e `SAVEPOINT`| 
  

Links para enriquecimento no aprendizado:

https://learnsql.com.br/blog/o-que-sao-ddl-dml-dql-e-dcl-em-sql/;

https://www.dio.me/articles/entendendo-os-subconjuntos-da-linguagem-sql-ddl-dml-dcl-tcl-e-dql.


