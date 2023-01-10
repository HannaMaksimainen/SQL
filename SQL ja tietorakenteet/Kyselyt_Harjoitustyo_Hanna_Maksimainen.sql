USE Kalenterintekijat_HannaMaksimainen;

/*Hae kaikki jäsenenID, sukunimi ja etunimi tiedot järjestelmästä, 
jotka ovat ylläpitäjiä ja käytössä oleva kalenteri on spiral planner*/
SELECT JasenID, Sukunimi, Etunimi, Yllapitaja
	FROM henkilot
	WHERE Yllapitaja='Kylla'
	AND kalenteri_ID=300;
	
/* Hae tuotteen nimi, hinta, kalenteriID ja kalenterin nimi, joiden hinta on väliltä 2-9 euroa.
Järjestä nousevasti hinnan mukaan.*/
SELECT Tuotteen_nimi, Hinta, tuunaus_tuotteet.Kalenteri_ID, kalenterit.Kalenteri_ID, Kalenterin_nimi
FROM tuunaus_tuotteet, kalenterit
WHERE tuunaus_tuotteet.Kalenteri_ID = kalenterit.Kalenteri_ID
AND hinta BETWEEN 2 AND 9
ORDER BY hinta ASC;

/*	Hae tuotteen nimi ja hinta joita on käytetty kalenterissa Ring planner ja kalenterissa Bullet Journal.
Nimeä otsikot tuote ja hinta euroissa*/
SELECT tuotteen_nimi AS 'Tuote', hinta AS 'Hinta euroissa'
	FROM tuunaus_tuotteet
	WHERE kalenteri_id=200 OR kalenteri_id=600;

/*Hae jäsenID, henkilöiden sukunimi, etunimi, jotka ovat olleet Porvoossa tai tapahtuman nimi on "Kalenterimiitti 2021". 
Järjestä nousevasti JäsenID:n mukaan */
SELECT h.JasenID, h.sukunimi, h.etunimi
FROM henkilot h, tapahtumat
	WHERE kaupunki ='Porvoo' OR tapahtuman_nimi='Kalenterimiitti 2021'
	ORDER BY JasenID DESC;

/*Hae kaupat, jotka ovat osallistuneet tapahtumaan "3v PLF kalenterimiitti" (TapahtumaID 246), ja
 kaupan nimi on Heidin korttipaja*/
SELECT k.Kauppa_ID, k.Kaupan_nimi, t.Tapahtuma_ID
	FROM kaupat k, tapahtuman_sponsorointi t
	WHERE Kaupan_nimi='Heidin korttipaja' and Tapahtuma_ID=246;
	
