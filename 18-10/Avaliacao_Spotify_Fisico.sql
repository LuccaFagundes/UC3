/* Avaliacao_Spotify_Logico: */

CREATE TABLE User (
    ID_User NUMERIC(3) PRIMARY KEY,
    Username VARCHAR(20),
    E_mail VARCHAR(30),
    Password NUMERIC(20),
    fk_Subscription_ID_Subscription NUMERIC(3)
);

CREATE TABLE Subscription (
    ID_Subscription NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Premium_Family (
    Price NUMERIC(5),
    Time_Of_Usage TIME,
    fk_Subscription_ID_Subscription NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Premium_Individual (
    Price NUMERIC(5),
    Time_Of_Usage TIME,
    fk_Subscription_ID_Subscription NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Premium_Duo (
    Price NUMERIC(5),
    Time_Of_Usage TIME,
    fk_Subscription_ID_Subscription NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Premium_Student (
    Price NUMERIC(5),
    Time_Of_Usage TIME,
    fk_Subscription_ID_Subscription NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Content (
    ID_Content NUMERIC(3) PRIMARY KEY,
    Type VARCHAR(20),
    Content_Title VARCHAR(20)
);

CREATE TABLE Music (
    Length TIME(6),
    Publishing_Date DATE,
    fk_Content_ID_Content NUMERIC(3) PRIMARY KEY,
    fk_Lyrics_ID_Lyrics NUMERIC(3)
);

CREATE TABLE Podcast (
    Length TIME(6),
    Publishing_Date DATE,
    Featured_Artist VARCHAR(20),
    Podcast_Description VARCHAR(300),
    fk_Content_ID_Content NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Artist (
    ID_Artist NUMERIC(3) PRIMARY KEY,
    Artist_Name VARCHAR(20),
    Artist_Description VARCHAR(300)
);

CREATE TABLE Playlist_Consumes (
    ID_Playlist NUMERIC(3) PRIMARY KEY,
    Playlist_Name VARCHAR(20),
    Playlist_Length TIME(6),
    fk_Content_ID_Content NUMERIC(3),
    fk_User_ID_User NUMERIC(3)
);

CREATE TABLE Lyrics (
    ID_Lyrics NUMERIC(3) PRIMARY KEY,
    Language VARCHAR(20)
);

CREATE TABLE Album_Contains (
    ID_Album NUMERIC(3) PRIMARY KEY,
    Featured_Artist VARCHAR(20),
    Album_Title VARCHAR(20),
    Album_Length TIME(6),
    fk_Content_ID_Content NUMERIC(3),
    fk_Artist_ID_Artist NUMERIC(3)
);

CREATE TABLE Produces (
    fk_Music_fk_Content_ID_Content NUMERIC(3),
    fk_Artist_ID_Artist NUMERIC(3)
);
 
ALTER TABLE User ADD CONSTRAINT FK_User_2
    FOREIGN KEY (fk_Subscription_ID_Subscription)
    REFERENCES Subscription (ID_Subscription)
    ON DELETE RESTRICT;
 
ALTER TABLE Premium_Family ADD CONSTRAINT FK_Premium_Family_2
    FOREIGN KEY (fk_Subscription_ID_Subscription)
    REFERENCES Subscription (ID_Subscription)
    ON DELETE CASCADE;
 
ALTER TABLE Premium_Individual ADD CONSTRAINT FK_Premium_Individual_2
    FOREIGN KEY (fk_Subscription_ID_Subscription)
    REFERENCES Subscription (ID_Subscription)
    ON DELETE CASCADE;
 
ALTER TABLE Premium_Duo ADD CONSTRAINT FK_Premium_Duo_2
    FOREIGN KEY (fk_Subscription_ID_Subscription)
    REFERENCES Subscription (ID_Subscription)
    ON DELETE CASCADE;
 
ALTER TABLE Premium_Student ADD CONSTRAINT FK_Premium_Student_2
    FOREIGN KEY (fk_Subscription_ID_Subscription)
    REFERENCES Subscription (ID_Subscription)
    ON DELETE CASCADE;
 
ALTER TABLE Music ADD CONSTRAINT FK_Music_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Music ADD CONSTRAINT FK_Music_3
    FOREIGN KEY (fk_Lyrics_ID_Lyrics)
    REFERENCES Lyrics (ID_Lyrics)
    ON DELETE RESTRICT;
 
ALTER TABLE Podcast ADD CONSTRAINT FK_Podcast_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content)
    ON DELETE CASCADE;
 
ALTER TABLE Playlist_Consumes ADD CONSTRAINT FK_Playlist_Consumes_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content);
 
ALTER TABLE Playlist_Consumes ADD CONSTRAINT FK_Playlist_Consumes_3
    FOREIGN KEY (fk_User_ID_User)
    REFERENCES User (ID_User);
 
ALTER TABLE Album_Contains ADD CONSTRAINT FK_Album_Contains_2
    FOREIGN KEY (fk_Content_ID_Content)
    REFERENCES Content (ID_Content);
 
ALTER TABLE Album_Contains ADD CONSTRAINT FK_Album_Contains_3
    FOREIGN KEY (fk_Artist_ID_Artist)
    REFERENCES Artist (ID_Artist);
 
ALTER TABLE Produces ADD CONSTRAINT FK_Produces_1
    FOREIGN KEY (fk_Music_fk_Content_ID_Content)
    REFERENCES Music (fk_Content_ID_Content)
    ON DELETE RESTRICT;
 
ALTER TABLE Produces ADD CONSTRAINT FK_Produces_2
    FOREIGN KEY (fk_Artist_ID_Artist)
    REFERENCES Artist (ID_Artist)
    ON DELETE RESTRICT;