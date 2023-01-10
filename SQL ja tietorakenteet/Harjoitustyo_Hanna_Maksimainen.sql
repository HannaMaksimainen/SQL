DROP DATABASE IF EXISTS Kalenterintekijat_HannaMaksimainen;

CREATE DATABASE IF NOT EXISTS Kalenterintekijat_HannaMaksimainen;

USE Kalenterintekijat_HannaMaksimainen;

CREATE TABLE Kalenterit
(
  Kalenteri_ID INT NOT NULL,
  Kalenterin_nimi VARCHAR(50) NOT NULL,
  PRIMARY KEY (Kalenteri_ID)
);

-- Luodan tauluun eri kalenterityypit
INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(100, 'Travels Notebook');

INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(200, 'Ring planner');

INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(300, 'Spiral planner');

INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(400, 'Hobonichi');

INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(500, 'Disc bound planner');

INSERT INTO Kalenterit(Kalenteri_ID, Kalenterin_nimi)
VALUES(600, 'Bullet Journal');


CREATE TABLE Tuunaus_tuotteet
(
  TuoteID INT NOT NULL,
  Hinta INT NOT NULL,
  Tuotteen_nimi VARCHAR(50) NOT NULL,
  Kalenteri_ID INT NOT NULL,
  PRIMARY KEY (TuoteID),
  FOREIGN KEY (Kalenteri_ID) REFERENCES Kalenterit(Kalenteri_ID)
);

-- Luodan tauluun eri tuotteita
-- ensimmäisen kalenterin tuotteet
INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(1, 5, 'Vesivarit', 100);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(2, 2, 'Mustekyna', 100);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(3, 5, 'Die cuts', 100);

-- toisen kalenterin tuotteet

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(4, 10, 'Insert', 200);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(5, 3, 'Washi tape', 200);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(6, 10, 'Tarrat', 200);

-- kolmannen kalenterin tuotteet

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(7, 20, 'Stabilon kynat', 300);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(8, 2, 'Post-it laput', 300);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(9, 4, 'Washi tape', 300);

-- neljännen kalenterin tuotteet

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(10, 5, 'Leimasimet', 400);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(11, 8, 'Valilehdet', 400);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(12, 2, 'Klemmarit', 400);

-- viidennen kalenterin tuotteet
INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(13, 20, 'Tarrakirja', 500);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(14, 20, 'Kiekot', 500);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(15, 10, 'Journal kortit', 500);

-- kuudennen kalenterin tuotteet
INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(16, 15, 'Geelikynat', 600);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(17, 1, 'Lehden kuvat', 600);

INSERT INTO Tuunaus_tuotteet(TuoteID, Hinta, Tuotteen_nimi, Kalenteri_ID)
VALUES(18, 4, 'Reijitin', 600);

CREATE TABLE Tapahtumat
(
  Tapahtuma_ID INT NOT NULL,
  Kaupunki VARCHAR(50) NOT NULL,
  Pvm DATE NOT NULL,
  Tapahtuman_nimi VARCHAR(50) NOT NULL,
  PRIMARY KEY (Tapahtuma_ID)
);

-- ensimmäinen tapahtuma
INSERT INTO Tapahtumat(Tapahtuma_ID, Kaupunki, Pvm, Tapahtuman_nimi)
VALUES(753, 'Tampere', '2019-07-15', '5v kalenterimiitti');

-- toinen tapahtuma
INSERT INTO Tapahtumat(Tapahtuma_ID, Kaupunki, Pvm, Tapahtuman_nimi)
VALUES(978, 'Helsinki', '2021-08-01', 'Kalenterimiitti 2021');

-- kolmas tapahtuma
INSERT INTO Tapahtumat(Tapahtuma_ID, Kaupunki, Pvm, Tapahtuman_nimi)
VALUES(246, 'Porvoo', '2017-05-30', '3v PLF kalenterimiitti');


CREATE TABLE Kaupat
(
  Kauppa_ID INT NOT NULL,
  Kaupan_nimi VARCHAR(50) NOT NULL,
  Tuotteen_nimi VARCHAR(50) NOT NULL,
  PRIMARY KEY (Kauppa_ID)
);

-- ensimmäinen kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(001, 'Chic Company', 'Tarrakirja');

-- toinen kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(002, 'Heidin korttipaja', 'Diecuts');

-- kolmas kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(003, 'Decorette', 'Leimasimet');

-- neljäs kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(004, 'Vihkokauppa', 'Kiekot');

-- viides kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(005, 'Suomalainen kirjakauppa', 'Geelikynat');

-- kuudes kauppa
INSERT INTO Kaupat(Kauppa_ID, Kaupan_nimi, Tuotteen_nimi)
VALUES(006, 'Klemmari kellari', 'Valilehdet');


CREATE TABLE Kaupasta_hankitut_tuotteet
(
  TuoteID INT NOT NULL,
  Kauppa_ID INT NOT NULL,
  PRIMARY KEY (TuoteID, Kauppa_ID),
  FOREIGN KEY (TuoteID) REFERENCES Tuunaus_tuotteet(TuoteID),
  FOREIGN KEY (Kauppa_ID) REFERENCES Kaupat(Kauppa_ID)
);

-- ensimmäinen tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(13, 001);

-- toinen tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(3, 002);

-- kolmas tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(10, 003);

-- neljäs tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(14, 004);

-- viides tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(15, 005);

-- kuudes tilaus
INSERT INTO Kaupasta_hankitut_tuotteet(TuoteID, Kauppa_ID)
VALUES(11, 006);


CREATE TABLE Tapahtuman_sponsorointi
(
  Kauppa_ID INT NOT NULL,
  Tapahtuma_ID INT NOT NULL,
  PRIMARY KEY (Kauppa_ID, Tapahtuma_ID),
  FOREIGN KEY (Kauppa_ID) REFERENCES Kaupat(Kauppa_ID),
  FOREIGN KEY (Tapahtuma_ID) REFERENCES Tapahtumat(Tapahtuma_ID)
);

-- ensimmäinen tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(001, 753);

-- toinen tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(003, 753);

-- kolmas tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(002, 753);

-- neljäs tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(006, 978);

-- viides tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(004, 978);

-- kuudes tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(003, 978);

-- seitsemäs tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(002, 246);

-- kahdeksas tapahtuma
INSERT INTO Tapahtuman_sponsorointi(Kauppa_ID, Tapahtuma_ID)
VALUES(001, 246);


CREATE TABLE Henkilot
(
  JasenID INT NOT NULL,
  Sposti VARCHAR(50) NOT NULL,
  Synt_aika DATE NOT NULL,
  Sukunimi VARCHAR(50) NOT NULL,
  Etunimi VARCHAR(50) NOT NULL,
  Yllapitaja VARCHAR(10) NOT NULL,
  Kalenteri_ID INT NOT NULL,
  PRIMARY KEY (JasenID),
  FOREIGN KEY (Kalenteri_ID) REFERENCES Kalenterit(Kalenteri_ID)
);

-- luodaan henkilö1
INSERT INTO Henkilot(JasenID, Sposti, Synt_aika, Sukunimi, Etunimi, Yllapitaja, Kalenteri_ID)
VALUES(105, 'mirkkuM@gmail.com', '1995-07-01', 'Merilainen', 'Mirkku', 'Ei', 100);

-- luodaan henkilö2
INSERT INTO Henkilot(JasenID, Sposti, Synt_aika, Sukunimi, Etunimi, Yllapitaja, Kalenteri_ID)
VALUES(207, 'SirpaP@gmail.com', '1980-09-28', 'Pennanen', 'Sirpa', 'Kylla', 300);

-- luodaan henkilö3
INSERT INTO Henkilot(JasenID, Sposti, Synt_aika, Sukunimi, Etunimi, Yllapitaja, Kalenteri_ID)
VALUES(209, 'MarjaT@hotmail.com', '1970-01-22', 'Turpeinen', 'Marja-Terttu', 'Kylla', 600);

-- luodaan henkilö4
INSERT INTO Henkilot(JasenID, Sposti, Synt_aika, Sukunimi, Etunimi, Yllapitaja, Kalenteri_ID)
VALUES(119, 'SeijaY@gmail.com', '2000-05-05', 'Yyteri', 'Seija', 'Ei', 500);

-- luodaan henkilö5
INSERT INTO Henkilot(JasenID, Sposti, Synt_aika, Sukunimi, Etunimi, Yllapitaja, Kalenteri_ID)
VALUES(175, 'SeppoTimo@gmail.com', '1960-12-11', 'Timonen', 'Seppo', 'Ei', 200);

CREATE TABLE Tapahtuman_jasenet
(
  JasenID INT NOT NULL,
  Tapahtuma_ID INT NOT NULL,
  PRIMARY KEY (JasenID, Tapahtuma_ID),
  FOREIGN KEY (JasenID) REFERENCES Henkilot(JasenID),
  FOREIGN KEY (Tapahtuma_ID) REFERENCES Tapahtumat(Tapahtuma_ID)
);

INSERT INTO Tapahtuman_jasenet(JasenID, Tapahtuma_ID)
VALUES(105, 753);

INSERT INTO Tapahtuman_jasenet(JasenID, Tapahtuma_ID)
VALUES(207, 978);

INSERT INTO Tapahtuman_jasenet(JasenID, Tapahtuma_ID)
VALUES(175, 246);

INSERT INTO Tapahtuman_jasenet(JasenID, Tapahtuma_ID)
VALUES(209, 246);

INSERT INTO Tapahtuman_jasenet(JasenID, Tapahtuma_ID)
VALUES(175, 753);
