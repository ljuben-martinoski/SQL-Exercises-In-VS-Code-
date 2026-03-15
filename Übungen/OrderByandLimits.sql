/*Mit ORDER BY sortierst du die Ergebnisse — 
aufsteigend (ASC) oder absteigend (DESC). 
Mit LIMIT begrenzt du die Anzahl der zurückgegebenen Zeilen. 
Beide Befehle kommen immer am Ende der Abfrage, nach WHERE.*/


--Übung — Tabelle autos
-- 1.Alle Autos nach Preis aufsteigend sortiert (günstigstes zuerst)
-- 2. Das teuerste Auto — nur 1 Zeile anzeigen
-- 3. Alle Autos die nach 2019 gebaut wurden, sortiert nach Baujahr absteigend



-- 1.Alle Autos nach Preis aufsteigend sortiert (günstigstes zuerst)
SELECT * FROM autos ORDER BY preis ASC;
--2. Das teuerste Auto — nur 1 Zeile anzeigen
SELECT * FROM autos ORDER BY preis DESC LIMIT 1;
--3. Alle Autos die nach 2019 gebaut wurden, sortiert nach Baujahr absteigend
SELECT * FROM autos ORDER BY baujahr DESC;

