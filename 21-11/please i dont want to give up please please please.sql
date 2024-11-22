SELECT nome_produto, nome_categoria
FROM produto
	LEFT JOIN categoria
	ON produto.id_categoria = categoria.id_categoria

SELECT NOME_PRODUTO, NOME_CATEGORIA
FROM PRODUTO
	RIGHT JOIN CATEGORIA
	ON PRODUTO.ID_CATEGORIA = CATEGORIA.ID_CATEGORIA

SELECT nome_cliente, id_pedido
FROM cliente
	RIGHT JOIN pedido
	ON cliente.id_cliente = pedido.id_cliente

SELECT nome_produto, nome_cliente
FROM produto 
	CROSS JOIN cliente

SELECT nome_produto, nome_categoria
FROM produto
	FULL OUTER JOIN categoria
	ON produto.id_categoria = categoria.id_categoria

/* exer 1 */ 

SELECT COUNT(id_produto), nome_categoria
FROM produto
	LEFT JOIN categoria
	ON produto.id_categoria = categoria.id_categoria
	GROUP BY nome_categoria




