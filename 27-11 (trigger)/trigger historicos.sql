select * from categoria
select * from produto
select * from cliente
select * from pedido

CREATE TABLE historico_salarial(
	id_historico SERIAL PRIMARY KEY NOT NULL,
	id_cliente INT NOT NULL REFERENCES cliente(id_cliente),
	data_alteracao DATE NOT NULL,
	salario MONEY NOT NULL
);

CREATE OR REPLACE FUNCTION atualizacao_salario() RETURNS
TRIGGER AS $$ BEGIN 
INSERT INTO historico_salarial(ID_Cliente,data_alteracao,salario)
VALUES (NEW.ID_Cliente,NOW(),NEW.salario);
RETURN NULL; END; $$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualiza_salario
AFTER INSERT OR UPDATE ON Cliente FOR EACH ROW 
EXECUTE FUNCTION atualizacao_salario()

UPDATE cliente SET salario = '4500'
WHERE id_cliente = 3

select * from historico_salarial

UPDATE cliente SET salario = '4503'
WHERE id_cliente = 1;
UPDATE cliente SET salario = '4502'
WHERE id_cliente = 2;
UPDATE cliente SET salario = '4501'
WHERE id_cliente = 4;

CREATE TABLE historico_preco_produto(
	id_historico SERIAL PRIMARY KEY NOT NULL,
	id_produto INT NOT NULL REFERENCES produto(id_produto),
	data_alteracao DATE NOT NULL,
	money MONEY NOT NULL
);

CREATE OR REPLACE FUNCTION atualizacao_preco() RETURNS
TRIGGER AS $$ BEGIN 
INSERT INTO historico_preco_produto(ID_Produto,data_alteracao,money)
VALUES (NEW.ID_Produto,NOW(),NEW.money);
RETURN NULL; END; $$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualiza_precoproduto
AFTER INSERT OR UPDATE ON produto FOR EACH ROW 
EXECUTE FUNCTION atualizacao_preco()

update produto set money = '50'
where id_produto = 3 

select * from historico_preco_produto
