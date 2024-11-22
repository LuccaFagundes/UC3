/* Aula 14-11-2024*/

create table categoria (
	id_categoria int primary key not null,
	nome_categoria varchar(252) not null
)

insert into categoria(id_categoria,nome_categoria) values
	(1,'Brinquedo'),
	(2,'Bebida'),
	(3,'Medicina')

select * from produto
select * from categoria

update produto
set id_categoria = 4
where id_produto = 3

SELECT nome_colunas
FROM nome_tabela1
	INNER JOIN nome_tabela2
	ON tabela1.coluna = tabela2.coluna
	INNER JOIN nome_tabelaN
	ON tabela1.coluna = tabelaN.coluna
WHERE [condicoes];

SELECT id_pedido, nome_cliente, nome_produto, pe.qtde_estoque
FROM pedido pe
	INNER JOIN produto 
	ON pe.id_produto = produto.id_produto
	INNER JOIN cliente 
	ON pe.id_cliente = cliente.id_cliente;

/* Exercicios 
1) Selecione todos produtos que foram comprados por um determinado usuário.

2) Selecione todos os produtos em uma determinada categoria.

3) Selecione todos os pedidos feitos por um determinado usuário em uma determinada categoria.

4) Selecione os pedidos com os nomes dos produtos de um usuário.
*/

SELECT nome_produto
FROM produto
	INNER JOIN pedido
	ON produto.id_produto=pedido.id_produto
WHERE id_cliente = 1

SELECT nome_produto,nome_categoria
FROM produto
	INNER JOIN categoria
	ON produto.id_categoria=categoria.id_categoria
WHERE categoria.id_categoria = 1



	
 	













						


	
	

	


