/*WHERE ist wie ein Filter — 
du sagst der Datenbank: „Gib mir nur die Zeilen, die diese Bedingung erfüllen." 
Ohne WHERE bekommst du immer alle Zeilen. 
Mit WHERE kannst du gezielt nach bestimmten Werten suchen — 
mit Zahlen, Text oder Vergleichen.*/


/*Übung
Schreibe SQL-Abfragen für die Tabelle autos:

1. Alle Autos die nach 2019 gebaut wurden (baujahr > 2019)
2. Alle Autos die weniger als 25000 Euro kosten
3. Alle Autos von der Marke VW oder Toyota
4. Alle Autos die nach 2019 gebaut wurden UND weniger als 30000 Euro kosten*/

-- 1. Alle Autos die nach 2019 gebaut wurden (baujahr > 2019)
SELECT * FROM autos WHERE baujahr > 2019;

-- 2. Alle Autos die weniger als 25000 Euro kosten
SELECT * FROM autos WHERE preis < 25000;

-- 3. Alle Autos von der Marke VW oder Toyota
SELECT * FROM autos WHERE marke = "VW" OR marke = "Toyota";

-- 4. Alle Autos die nach 2019 gebaut wurden UND weniger als 30000

SELECT * FROM autos WHERE baujahr > 2019 AND preis < 30000;


