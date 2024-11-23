select * from categoria
select * from produto
select * from cliente
select * from pedido

CREATE OR REPLACE VIEW produtos_comprados AS
	SELECT PE.id_pedido AS numero_pedido, nome_cliente, nome_produto, PE.qtde_estoque*money AS fatura
	FROM pedido PE
	INNER JOIN produto
	ON PE.id_produto = produto.id_produto
	INNER JOIN cliente
	ON PE.id_cliente = cliente.id_cliente
select * from produtos_comprados

CREATE OR REPLACE VIEW Produtos_Categorias AS
	SELECT nome_produto,nome_categoria
	FROM produto
	LEFT JOIN categoria
	ON produto.id_categoria = categoria.id_categoria
select * from produtos_categorias

CREATE OR REPLACE VIEW Pedidos_Feitos AS
	SELECT id_pedido AS numero_pedido, nome_cliente
	FROM cliente
	RIGHT JOIN pedido
	ON cliente.id_cliente = pedido.id_pedido
select * from pedidos_feitos

CREATE OR REPLACE VIEW Usuarios_Cliente AS
	SELECT nome_cliente, PE.id_pedido, nome_produto
	FROM pedido PE
	INNER JOIN produto
	On PE.id_produto = produto.id_produto
	FULL OUTER JOIN cliente
	ON PE.id_cliente = cliente.id_cliente

select * from usuarios_cliente
select * from cliente



	






