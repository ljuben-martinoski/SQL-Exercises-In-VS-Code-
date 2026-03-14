SELECT * FROM autos; -- gib mir alles , alle spalten alle zeilen

SELECT marke, preis FROM autos; --Nur bestimmte Spalten auswählen
-- Spaltennamen durch Komma trennen



SELECT marke   AS "Hersteler",
       modell  AS "Modell", 
       baujahr AS "Jahr"
FROM autos;

SELECT baujahr FROM autos;  -- Nur eine einzige Spalte