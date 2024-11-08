select * from cliente      
select * from produto
select * from pedido

select count(*) from cliente

select count(*) as numero_de_clientes from cliente

select count(*) as clientes_mulheres from cliente
where genero = 'feminino'

select count(*) as numero_de_produtos from produto

select count(*) as pedidos_de_segundo from pedido
where id_cliente = 2

select count(*) as quantos_produto_um from pedido
where id_produto = 1

select count(distinct id_cliente) as pedidos_unicos from pedido


/*1*/ select avg(money::numeric) from produto
/*2*/ select avg(qtde::numeric) from pedido
/*3*/ select avg(num_pedidos) from(select id_cliente, count(*) as num_pedidos from pedido group by id_cliente) as qtde_pedidos
/*4*/ select avg(salario::numeric) from cliente


select sum(salario) from cliente

select sum(money/3) from produto

/*1*/ select avg(salario) from cliente group by genero
/*2*/ select sum(id_cliente)

/*3*/ select sum(money*0.9) from produto