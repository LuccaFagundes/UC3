/* Aula do dia 13-11 */

select * from cliente
select * from pedido
select * from produto

SELECT nome_cliente,qtde_estoque
FROM cliente,Pedido
WHERE pedido.id_cliente=cliente.id_cliente and qtde_estoque > 2

/* passos SGBD 
1. produto cartesiano entre as relações
2. remoção das linhas que não correspondem à realidade do banco de dados.
3. a qtde >2 
*/

/* exercicios 
1. Selecione o nome dos Usuarios e o número do pedido de cada pedido.
2. Selecione o nome dos produtos e a quantidade nos pedidos
3. Selecione o nome dos Usuarios, número do pedido onde a quantidade de produto comprada for maior que 2.
4. Selecione o nome dos Usuarios, quantidade dos pedidos, nome dos produtos e faça a soma do valor dos produtos comprados.
*/

SELECT nome_cliente,id_pedido
FROM cliente,pedido
WHERE pedido.id_cliente=cliente.id_cliente 

SELECT nome_produto,pedido.qtde_estoque
FROM produto,pedido
WHERE pedido.id_produto=produto.id_produto 

SELECT nome_cliente,qtde_estoque
FROM cliente,Pedido
WHERE pedido.id_cliente=cliente.id_cliente and qtde_estoque > 2

SELECT nome_cliente,pedido.qtde_estoque,nome_produto
FROM cliente,pedido,produto
WHERE produto.id_produto=pedido.id_produto and pedido.id_cliente=cliente.id_cliente












