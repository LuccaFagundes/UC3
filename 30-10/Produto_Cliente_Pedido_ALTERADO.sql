CREATE TABLE Cliente (
	ID_Cliente INT PRIMARY KEY,
	Nome_Cliente VARCHAR(30) NOT NULL,
	Senha_Cliente VARCHAR(30) NOT NULL,
	Data_De_Nascimento DATE NOT NULL
);

CREATE TABLE Produto (
	ID_Produto INT PRIMARY KEY,
	Nome_Produto VARCHAR(30) NOT NULL,
	Descricao TEXT NULL,
	Money NUMERIC CHECK (PRECO > 0) NOT NULL,
	Qtde_Estoque SMALLINT DEFAULT 0
);

CREATE TABLE Pedido (
	ID_Pedido SERIAL PRIMARY KEY,
	ID_Cliente INT NOT NULL REFERENCES Cliente(ID_Cliente),
	ID_Produto INT NOT NULL,
	Qtde SMALLINT NOT NULL,
	FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

ALTER TABLE Cliente ADD Email_Cliente VARCHAR(255) NOT NULL;

ALTER TABLE Produto RENAME COLUMN Preco TO Money

ALTER TABLE Pedido DROP COLUMN Qtde;

CREATE TABLE Categoria (
ID_Categoria INT PRIMARY KEY
);

DROP TABLE Categoria;

TRUNCATE TABLE Pedido CASCADE;

TRUNCATE TABLE Cliente CASCADE;

SELECT * FROM Cliente;

INSERT INTO Cliente(id_cliente,nome_cliente,senha_cliente,data_de_nascimento,email_cliente)
VALUES

	(1, 'João Silveira', '20032022', '2003-12-20', 'js@gmail.com'),
	(2, 'Marcelo Oliveira', '10230213', '1990-12-12', 'mo@gmail.com'),
	(3, 'Jaõa Silveira', '22023002', '2003-12-20', 'sj@gmail.com');

SELECT * FROM Pedido

INSERT INTO Produto(id_produto, nome_produto, descricao, money, Qtde_Estoque)
Values
(1, 'Bola', 'Bola colorida', 15.00, 13),
(2, 'Água', 'Água em garrafa de plástico de 1l', 5.00, 52),
(3, 'Marijane', 'Alface do Diabo', 30.00, 12);

INSERT INTO Pedido(ID_Pedido, ID_Cliente, ID_Produto, qtde_estoque)
Values
(1, 1, 3, 3),
(2, 2, 3, 4),
(3, 3, 3, 2),
(4, 2, 2, 10),
(5, 1, 1, 1);

 UPDATE Pedido
 SET Qtde_Estoque = 12
 WHERE ID_Produto = 1

 UPDATE Pedido
 SET Qtde_Estoque = 42
 WHERE ID_Produto = 2

 UPDATE Pedido
 SET Qtde_Estoque = 3
 WHERE ID_Produto = 3

 SELECT Nome_Produto, money FROM Produto
 WHERE money > 10
 ORDER BY money ASC

 SELECT Data_De_Nascimento, Nome_Cliente FROM Cliente
 WHERE Data_De_Nascimento > '2000-01-31'
 ORDER BY Nome_Cliente ASC



 

 









	
	




