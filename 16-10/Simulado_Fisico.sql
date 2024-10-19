/* Simulado_Logico: */

CREATE TABLE User (
    ID_User NUMERIC PRIMARY KEY,
    Username CHAR,
    Password CHAR,
    E_mail CHAR
);

CREATE TABLE Content (
    ID_Conteudo NUMERIC PRIMARY KEY,
    Content_Title CHAR,
    Year DATE,
    Sinopsis CHAR,
    Age_Restriction NUMERIC,
    Director CHAR,
    fk_Caption_ID_Caption NUMERIC
);

CREATE TABLE Vizualization_Watch (
    ID_Vizualization NUMERIC PRIMARY KEY,
    Date DATE,
    Time TIME,
    fk_User_ID_User NUMERIC,
    fk_Content_ID_Conteudo NUMERIC
);

CREATE TABLE Watchlist_Has (
    ID_Watchlist NUMERIC PRIMARY KEY,
    fk_User_ID_User NUMERIC,
    fk_Content_ID_Conteudo NUMERIC
);

CREATE TABLE Serie (
    Season NUMERIC,
    fk_Content_ID_Conteudo NUMERIC PRIMARY KEY,
    fk_Episode_ID_Episode NUMERIC
);

CREATE TABLE Movie (
    Movie_Type CHAR,
    Movie_Duration TIMESTAMP,
    fk_Content_ID_Conteudo NUMERIC PRIMARY KEY
);

CREATE TABLE Type (
    ID_Type NUMERIC PRIMARY KEY,
    Type_Name CHAR,
    fk_Content_ID_Conteudo NUMERIC
);

CREATE TABLE Caption (
    ID_Caption NUMERIC PRIMARY KEY,
    Language CHAR,
    Type CHAR
);

CREATE TABLE Episode (
    ID_Episode NUMERIC PRIMARY KEY,
    Length TIMESTAMP,
    Date_Of_Launch DATE
);

CREATE TABLE Review_Watch (
    Score NUMERIC,
    fk_User_ID_User NUMERIC,
    fk_Content_ID_Conteudo NUMERIC
);

CREATE TABLE Subscription (
    ID_Subscription NUMERIC PRIMARY KEY,
    Payment_Method CHAR,
    Payment_Date DATE,
    Payment_Value NUMERIC,
    fk_User_ID_User NUMERIC
);
 
ALTER TABLE Content ADD CONSTRAINT FK_Content_2
    FOREIGN KEY (fk_Caption_ID_Caption)
    REFERENCES Caption (ID_Caption)
    ON DELETE RESTRICT;
 
ALTER TABLE Vizualization_Watch ADD CONSTRAINT FK_Vizualization_Watch_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE Vizualization_Watch ADD CONSTRAINT FK_Vizualization_Watch_3
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo);
 
ALTER TABLE Watchlist_Has ADD CONSTRAINT FK_Watchlist_Has_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE Watchlist_Has ADD CONSTRAINT FK_Watchlist_Has_3
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo);
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_2
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Serie ADD CONSTRAINT FK_Serie_3
    FOREIGN KEY (fk_Episode_ID_Episode)
    REFERENCES Episode (ID_Episode)
    ON DELETE RESTRICT;
 
ALTER TABLE Movie ADD CONSTRAINT FK_Movie_2
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Type ADD CONSTRAINT FK_Type_2
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Review_Watch ADD CONSTRAINT FK_Review_Watch_1
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE Review_Watch ADD CONSTRAINT FK_Review_Watch_2
    FOREIGN KEY (fk_Content_ID_Conteudo)
    REFERENCES Content (ID_Conteudo);
 
ALTER TABLE Subscription ADD CONSTRAINT FK_Subscription_2
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User)
    ON DELETE RESTRICT;