/* Lógico_1: */

CREATE TABLE Actor (
    ID_Actor NUMERIC PRIMARY KEY,
    Name CHAR,
    Nacionality CHAR,
    Birth_date CHAR
);

CREATE TABLE Director (
    ID_Director NUMERIC PRIMARY KEY,
    Name CHAR,
    Birth_date CHAR,
    Nacionality CHAR
);

CREATE TABLE Playlist_Basic (
    ID_Playlist NUMERIC,
    Date DATE,
    Creation_date DATE,
    Name CHAR,
    fk_Premium_fk_User_ID_User NUMERIC,
    fk_User_Movie_ID_User NUMERIC,
    PRIMARY KEY (ID_Playlist, fk_User_Movie_ID_User)
);

CREATE TABLE Action (
    fk_Movie_ID_Movie NUMERIC PRIMARY KEY
);

CREATE TABLE Comedy (
    fk_Movie_ID_Movie NUMERIC PRIMARY KEY
);

CREATE TABLE Drama (
    fk_Movie_ID_Movie NUMERIC PRIMARY KEY
);

CREATE TABLE E__Assoc__1_User_Movie (
    Date DATE,
    Commentary BOOLEAN,
    Grade CHAR,
    ID_Assessment NUMERIC,
    ID_User NUMERIC,
    Name CHAR,
    E_mail CHAR,
    Visualization_Historic CHAR,
    Signature_date DATE,
    Launch_year DATE,
    Duration TIME,
    Indicative_Classification_ NUMERIC,
    ID_Movie NUMERIC,
    fk_Director_ID_Director NUMERIC,
    PRIMARY KEY (ID_Assessment, ID_User, ID_Movie)
);

CREATE TABLE Premium (
    fk_User_Movie_ID_User NUMERIC PRIMARY KEY
);

CREATE TABLE Has (
    fk_Movie_ID_Movie NUMERIC,
    fk_Actor_ID_Actor NUMERIC
);

CREATE TABLE Has (
    fk_Movie_ID_Movie NUMERIC,
    fk_Playlist_Basic_ID_Playlist NUMERIC,
    fk_Playlist_Basic_fk_User_Movie_ID_User NUMERIC
);
 
ALTER TABLE Playlist_Basic ADD CONSTRAINT FK_Playlist_Basic_2
    FOREIGN KEY (fk_Premium_fk_User_ID_User)
    REFERENCES Premium (fk_User_Movie_ID_User)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist_Basic ADD CONSTRAINT FK_Playlist_Basic_3
    FOREIGN KEY (fk_User_Movie_ID_User)
    REFERENCES ??? (???);
 
ALTER TABLE Action ADD CONSTRAINT FK_Action_2
    FOREIGN KEY (fk_Movie_ID_Movie)
    REFERENCES ??? (???);
 
ALTER TABLE Comedy ADD CONSTRAINT FK_Comedy_2
    FOREIGN KEY (fk_Movie_ID_Movie)
    REFERENCES ??? (???);
 
ALTER TABLE Drama ADD CONSTRAINT FK_Drama_2
    FOREIGN KEY (fk_Movie_ID_Movie)
    REFERENCES ??? (???);
 
ALTER TABLE E__Assoc__1_User_Movie ADD CONSTRAINT FK_E__Assoc__1_User_Movie_2
    FOREIGN KEY (fk_Director_ID_Director)
    REFERENCES Director (ID_Director);
 
ALTER TABLE Premium ADD CONSTRAINT FK_Premium_2
    FOREIGN KEY (fk_User_Movie_ID_User)
    REFERENCES ??? (???);
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_1
    FOREIGN KEY (fk_Movie_ID_Movie)
    REFERENCES ??? (???);
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_2
    FOREIGN KEY (fk_Actor_ID_Actor)
    REFERENCES Actor (ID_Actor)
    ON DELETE RESTRICT;
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_1
    FOREIGN KEY (fk_Movie_ID_Movie)
    REFERENCES ??? (???);
 
ALTER TABLE Has ADD CONSTRAINT FK_Has_2
    FOREIGN KEY (fk_Playlist_Basic_ID_Playlist, fk_Playlist_Basic_fk_User_Movie_ID_User)
    REFERENCES Playlist_Basic (ID_Playlist, fk_User_Movie_ID_User)
    ON DELETE RESTRICT;