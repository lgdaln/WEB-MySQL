
CREATE DATABASE lanchonete;

CREATE TABLE Atendente(
pk_matricula INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200),
senha VARCHAR(30)
);

CREATE TABLE Cliente(
pk_cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
cpf VARCHAR(11),
nome VARCHAR(200),
senha VARCHAR(30)
);

CREATE TABLE Produto(
pk_cod_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200),
disponibilidade VARCHAR(200),
valor_unitario FLOAT,
tipo VARCHAR (50) NOT NULL
);

CREATE TABLE Pedido(
pk_cod_pedido INT PRIMARY KEY AUTO_INCREMENT,
data DATE,
hora TIME,
statusp VARCHAR(200),
observacao VARCHAR(200),
valorAtual FLOAT,
quantidade INT,
fk_cod_cliente INT,
foreign key(fk_cod_cliente) references Cliente(pk_cod_cliente),
fk_cod_produto INT,
foreign key(fk_cod_produto) references Produto(pk_cod_produto),
fk_matricula INT,
foreign key(fk_matricula) references Atendente(pk_matricula)
);
