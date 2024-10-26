/* Lógico_1: */

CREATE TABLE Personagem (
    ID_Personagem INT PRIMARY KEY,
    Nome_Personagem VARCHAR(30),
    Afiliacao VARCHAR(30),
    fk_Local_ID INT
);

CREATE TABLE Item (
    ID_Item INT PRIMARY KEY,
    Nome_Item VARCHAR(30),
    Tipo_Item VARCHAR(30),
    Efeito_Item VARCHAR(30),
    Raridade_Item VARCHAR(30)
);

CREATE TABLE Local (
    ID_Local INT PRIMARY KEY,
    Nome_Local VARCHAR(30),
    Descricao_Local VARCHAR(30),
    Tipo_Local VARCHAR(30)
);

CREATE TABLE Inventario_Possue (
    Quantidade_Inv_Item INT,
    fk_Item_ID INT,
    fk_Personagem_ID INT
);

CREATE TABLE Hylian (
    Habilidade_Hylian VARCHAR(30),
    fk_Personagem_ID INT PRIMARY KEY
);

CREATE TABLE Goron (
    Habilidade_Goron VARCHAR(30),
    fk_Personagem_ID INT PRIMARY KEY
);

CREATE TABLE Zora (
    Habilidade_Zora VARCHAR(30),
    fk_Personagem_ID INT PRIMARY KEY
);

CREATE TABLE Gerudo (
    Habilidade_Gerudo VARCHAR(30),
    fk_Personagem_ID INT PRIMARY KEY
);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Local_ID)
    REFERENCES Local (ID_Local)
    ON DELETE RESTRICT;
 
ALTER TABLE Inventario_Possue ADD CONSTRAINT FK_Inventario_Possue_1
    FOREIGN KEY (fk_Item_ID)
    REFERENCES Item (ID_Item);
 
ALTER TABLE Inventario_Possue ADD CONSTRAINT FK_Inventario_Possue_2
    FOREIGN KEY (fk_Personagem_ID)
    REFERENCES Personagem (ID_Personagem);
 
ALTER TABLE Hylian ADD CONSTRAINT FK_Hylian_2
    FOREIGN KEY (fk_Personagem_ID)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Goron ADD CONSTRAINT FK_Goron_2
    FOREIGN KEY (fk_Personagem_ID)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Zora ADD CONSTRAINT FK_Zora_2
    FOREIGN KEY (fk_Personagem_ID)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;
 
ALTER TABLE Gerudo ADD CONSTRAINT FK_Gerudo_2
    FOREIGN KEY (fk_Personagem_ID)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE CASCADE;