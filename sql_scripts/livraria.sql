CREATE DATABASE IF NOT EXISTS livraria_ruffles;
USE livraria_ruffles;

-- Criação das tabelas
CREATE TABLE Cliente (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  endereco VARCHAR(255),
  telefone VARCHAR(20),
  cpf_cnpj VARCHAR(20)
);

CREATE TABLE Autor (
  id_autor INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  nacionalidade VARCHAR(50)
);

CREATE TABLE Categoria (
  id_categoria INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50)
);

CREATE TABLE Livro (
  id_livro INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(150),
  autor_id INT,
  editora VARCHAR(100),
  isbn VARCHAR(20),
  assunto VARCHAR(50),
estoque INT,
  FOREIGN KEY (autor_id) REFERENCES Autor(id_autor)
);

CREATE TABLE Pedido (
  id_pedido INT PRIMARY KEY AUTO_INCREMENT,
  data_pedido DATE,
  cliente_id INT,
  FOREIGN KEY (cliente_id) REFERENCES Cliente(id_cliente)
);

CREATE TABLE ItemPedido (
  id_item INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  livro_id INT,
  quantidade INT,
  preco_unitario DECIMAL(10,2),
  FOREIGN KEY (pedido_id) REFERENCES Pedido(id_pedido),
  FOREIGN KEY (livro_id) REFERENCES Livro(id_livro)
);

CREATE TABLE Pagamento (
  id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  valor_pago DECIMAL(10,2),
  data_pagamento DATE,
  metodo_pagamento VARCHAR(50),
  FOREIGN KEY (pedido_id) REFERENCES Pedido(id_pedido)
);
