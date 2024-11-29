CREATE TABLE personagens (
    id_personagem INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE cenarios (
    id_cenario INT PRIMARY KEY,
    nome_cenario VARCHAR(50)
);

CREATE TABLE itens (
    id_item INT PRIMARY KEY,
    nome_item VARCHAR(50),
    valor INT
);

CREATE TABLE coletados (
    id_personagem INT,
    id_item INT,
    id_cenario INT,
    PRIMARY KEY (id_personagem, id_item, id_cenario),
    FOREIGN KEY (id_personagem) REFERENCES personagens(id_personagem),
    FOREIGN KEY (id_item) REFERENCES itens(id_item),
    FOREIGN KEY (id_cenario) REFERENCES cenarios(id_cenario)
);

-- Inserindo dados nas tabelas
INSERT INTO personagens (id_personagem, nome) VALUES
(1, 'Aragorn'),
(2, 'Legolas'),
(3, 'Gimli'),
(4, 'Gandalf');

INSERT INTO cenarios (id_cenario, nome_cenario) VALUES
(1, 'Floresta de Lothlórien'),
(2, 'Montanhas de Moria'),
(3, 'Campo de Batalha de Helm');

INSERT INTO itens (id_item, nome_item, valor) VALUES
(1, 'Espada Elfica', 500),
(2, 'Arco Longo', 300),
(3, 'Machado de Batalha', 400),
(4, 'Varinha Mágica', 600);

INSERT INTO coletados (id_personagem, id_item, id_cenario) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(1, 3, 3),
(2, 1, 1);

/* 
1) Criar o Banco TerraMedia.

2) Encontrar os itens coletados por Aragorn.

3) Descobrir os cenários que Legolas visitou.

4) Verificar os itens coletados por Gimli no Campo de Batalha de Helm.

5) Somar o valor dos itens coletados no cenário 'Floresta de Lothlórien'.
*/

SELECT nome_item
FROM itens,coletados
WHERE itens.id_item=coletados.id_item AND id_personagem = 1

SELECT nome_cenario
FROM cenarios,coletados
WHERE cenarios.id_cenario=coletados.id_cenario AND id_personagem = 2

SELECT nome_item
FROM itens,coletados
WHERE itens.id_item=coletados.id_cenario AND id_personagem = 3

SELECT SUM(valor)
FROM itens,coletados
WHERE itens.id_item=coletados.id_item AND id_cenario = 1









