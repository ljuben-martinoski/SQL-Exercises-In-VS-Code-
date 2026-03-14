
/*SELECT ist der häufigste SQL-Befehl überhaupt — damit liest du Daten aus einer Tabelle. 
Das * bedeutet „alle Spalten". 
Du kannst aber auch nur bestimmte Spalten beim Namen nennen. 
Alles was du schreibst, 
führst du direkt in DB Browser for SQLite oder dem SQLite Viewer in VS Code aus.*/

SELECT * FROM autos; -- gib mir alles , alle spalten alle zeilen

SELECT marke, preis FROM autos; --Nur bestimmte Spalten auswählen
-- Spaltennamen durch Komma trennen



SELECT marke   AS "Hersteler",
       modell  AS "Modell", 
       baujahr AS "Jahr"
FROM autos;

SELECT baujahr FROM autos;  -- Nur eine einzige Spalte