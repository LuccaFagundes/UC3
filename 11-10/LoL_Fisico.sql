/* Lógico_3: */

CREATE TABLE Player (
    Level Number(Inf),
    ID_Player Number(2) PRIMARY KEY,
    Score Number(3),
    User_Name Char(20),
    fk_Team_ID_Team Number(2)
);

CREATE TABLE Team (
    ID_Team Number(2) PRIMARY KEY,
    Name_Team Number(20),
    fk_Match_ID_Match Number(2)
);

CREATE TABLE Player_Match_Game (
    Team_Points Number(3),
    Player_Points Number(3),
    fk_Player_ID_Player Number(2),
    fk_Match_ID_Match Number(2)
);

CREATE TABLE Match (
    ID_Match Number(2) PRIMARY KEY,
    Duration Number(Inf),
    Results Char(20),
    Date_time Date,
    fk_Champion_ID_Champion Number(3)
);

CREATE TABLE Champion (
    Ability Char(999),
    Damage_Type Char(8),
    ID_Champion Number(3) PRIMARY KEY,
    Name_Champion Char(10),
    Function Char(10),
    fk_Player_ID_Player Number(2)
);

CREATE TABLE Item (
    ID_Team Number(2) PRIMARY KEY,
    Cost Number(4),
    Description Char(999),
    Effect Char(100),
    Name Char(100),
    fk_Match_ID_Match Number(2)
);

CREATE TABLE Offensive_Item (
    Magic_Damage Number(10),
    Phisic_Damage Number(10),
    fk_Item_ID_Team Number(2) PRIMARY KEY
);

CREATE TABLE Consumable (
    HP_Points Number(10),
    Damage Number(10),
    fk_Item_ID_Team Number(2) PRIMARY KEY
);

CREATE TABLE Defensive_Item (
    Armor Number(10),
    Res_Magic Number(10),
    fk_Item_ID_Team Number(2) PRIMARY KEY
);
 
ALTER TABLE Player ADD CONSTRAINT FK_Player_2
    FOREIGN KEY (fk_Team_ID_Team)
    REFERENCES Team (ID_Team)
    ON DELETE RESTRICT;
 
ALTER TABLE Team ADD CONSTRAINT FK_Team_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match)
    ON DELETE RESTRICT;
 
ALTER TABLE Player_Match_Game ADD CONSTRAINT FK_Player_Match_Game_1
    FOREIGN KEY (fk_Player_ID_Player)
    REFERENCES Player (ID_Player);
 
ALTER TABLE Player_Match_Game ADD CONSTRAINT FK_Player_Match_Game_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match);
 
ALTER TABLE Match ADD CONSTRAINT FK_Match_2
    FOREIGN KEY (fk_Champion_ID_Champion)
    REFERENCES Champion (ID_Champion)
    ON DELETE RESTRICT;
 
ALTER TABLE Champion ADD CONSTRAINT FK_Champion_2
    FOREIGN KEY (fk_Player_ID_Player)
    REFERENCES Player (ID_Player)
    ON DELETE RESTRICT;
 
ALTER TABLE Item ADD CONSTRAINT FK_Item_2
    FOREIGN KEY (fk_Match_ID_Match)
    REFERENCES Match (ID_Match)
    ON DELETE RESTRICT;
 
ALTER TABLE Offensive_Item ADD CONSTRAINT FK_Offensive_Item_2
    FOREIGN KEY (fk_Item_ID_Team)
    REFERENCES Item (ID_Team)
    ON DELETE CASCADE;
 
ALTER TABLE Consumable ADD CONSTRAINT FK_Consumable_2
    FOREIGN KEY (fk_Item_ID_Team)
    REFERENCES Item (ID_Team)
    ON DELETE CASCADE;
 
ALTER TABLE Defensive_Item ADD CONSTRAINT FK_Defensive_Item_2
    FOREIGN KEY (fk_Item_ID_Team)
    REFERENCES Item (ID_Team)
    ON DELETE CASCADE;