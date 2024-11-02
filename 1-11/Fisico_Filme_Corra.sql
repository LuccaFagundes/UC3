/* se quiser trocar LITERALMENTE QUALQUER COISA, sinta-se a vontade */

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY NOT NULL,
    Nome_Personagem VARCHAR(50),
    Genero VARCHAR(50),
    Etnia VARCHAR(50),
    Nome_Espectador VARCHAR(50),
    Nome_Controlador VARCHAR(50) NOT NULL,
    fk_Contexto_Sociocultural_ID_Sociocultural INT
);

CREATE TABLE Tratamento (
    ID_Tratamento INT PRIMARY KEY NOT NULL,
    Nome_Tratamento VARCHAR(50),
    Descricao_Tratamento VARCHAR(150),
    fk_Personagem_ID_Personagem INT
);

CREATE TABLE MembroFamilia_Pertence (
    Funcao VARCHAR(150),
    Relacao VARCHAR(150),
    fk_Personagem_ID_Personagem INT,
    fk_Familia_ID_Familia INT
);

CREATE TABLE Familia (
    ID_Familia INT PRIMARY KEY NOT NULL,
    Nome_Familia VARCHAR(50),
    Descricao_Familia VARCHAR(150),
    fk_Contexto_Sociocultural_ID_Sociocultural INT
);

CREATE TABLE Contexto_Sociocultural (
    ID_Sociocultural INT PRIMARY KEY NOT NULL,
    Descricao_Sociocultural VARCHAR(150),
    Nome_Sociocultural VARCHAR(50),
    Classe_Sociocultural VARCHAR(50)
);

INSERT INTO Contexto_Sociocultural(id_sociocultural,descricao_sociocultural,nome_sociocultural,classe_sociocultural)
Values (2,'Poder viver com conforto mas ainda com limitações sociais','Minoria','Media')

select * from Contexto_Sociocultural

INSERT INTO personagem(id_personagem,nome_personagem,genero,etnia,nome_espectador,nome_controlador,fk_contexto_sociocultural_id_sociocultural)
Values(2,'Chris Washington','Masculino','Negro',null,'Chris',2)

select * from personagem

ALTER TABLE personagem ALTER COLUMN nome_espectador SET NULL

INSERT INTO tratamento(id_tratamento,nome_tratamento,descricao_tratamento,fk_personagem_id_personagem)
Values (2,'Pré-Operatorio','Preparação anterior da operação',2)

select * from tratamento 