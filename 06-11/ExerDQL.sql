insert into cliente(id_cliente,nome_cliente,senha_cliente,data_de_nascimento,email_cliente,genero,salario,36078014455)
values(4,'Marcelo De Sabugosa',54345931,'1988-05-12','vscondesabugosa@gmail.com','masculino',2000)

select * from cliente

alter table cliente add CPF char(11)

update cliente set genero = 'feminino'
where id_cliente = 4

insert into cliente(id_cliente,nome_cliente,senha_cliente,data_de_nascimento,email_cliente,genero,salario,cpf)
values(5,'Loreni Puntel',6887560,'1999-07-01','utopialorenip@gmail.com','feminino',5400,98763050087),
	(6,'Fagundes Fagundes',13579011,'1961-08-02','fagundessleo@gmail.com','masculino',3600,36015507779)

	select * from cliente 
	select distinct nome_cliente from cliente
	select nome_cliente,cpf from cliente
	select nome_cliente,cpf from cliente where genero = 'feminino'
	select nome_cliente,cpf from cliente where genero = 'feminino' order by nome_cliente desc
	select nome_cliente,salario from cliente where genero = 'masculino' and salario < 3000
