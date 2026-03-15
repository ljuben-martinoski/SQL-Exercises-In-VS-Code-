

/*INSERT INTO autos (id, marke, modell, baujahr, preis)
VALUES 
        (5, 'Audi', 'A3', NULL, 27500.00),
        (6, 'Ford', NULL, 2020, NULL);
*/



-- Abfragen:

-- 1. Alle Autos wo das Baujahr fehlt 
-- 2. Alle Autos wo der Preis vorhanden ist 
-- 3. Alle Autos anzeigen — fehlenden Preis mit 'Kein Preis' ersetzen 


-- 1. Alle Autos wo das Baujahr fehlt 
SELECT * FROM autos WHERE baujahr IS NULL;

-- 2. Alle Autos wo der Preis vorhanden ist 
SELECT * FROM autos WHERE preis IS NOT NULL;

-- 3. Alle Autos anzeigen — fehlenden Preis mit 'Kein Preis' ersetzen
SELECT marke,
        COALESCE(modell, 'Unbekannt') AS modell,   
        COALESCE(CAST(preis AS TEXT), 'Kein Preis') AS preis
FROM autos;

