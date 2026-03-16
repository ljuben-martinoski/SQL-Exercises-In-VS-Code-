/*Übung
Erstelle eine neue Tabelle namens produkte mit diesen Spalten und Typen:
Spalte             Typ            Bedeutung 
id                INTEGER        Eindeutige Nummer
name               TEXT           Produktname 
preis              REAL           Preis in Euro
lagerbestand     INTEGER        Anzahl auf Lager
ablaufdatum      TEXT            Datum als Text*/

-- Füge dann 3 Produkte ein und zeige sie mit SELECT * an. 
-- Prüfe danach den Typ des Preises mit TYPEOF().
-- DROP TABLE IF EXISTS produkte;

/*CREATE TABLE IF NOT EXISTS produkte(
    id INT ,
    name TEXT, 
    preis REAL, 
    lagerbestand INT, 
    ablaufdatum TEXT);*/


/*INSERT INTO produkte (id, name, preis, lagerbestand, ablaufdatum)
VALUES
    (1, 'Apfelsaft', 1.99, 100, '2025-12-31'),
    (2, 'Brot', 2.49, 50, '2024-12-01'),
    (3, 'Käse', 4.99, 30, '2025-03-15'),
    (4, 'Milch', NULL, 80, '2024-11-20'),
    (5, 'Butter', 2.19, NULL, '2025-01-10');*/

SELECT typeof(1),
       typeof('Brot'),
       typeof(2.49),
       typeof('2025-03-15');

SELECT name,
preis,
typeof(preis) AS datentyp
FROM produkte; 


--6 Abfragen selbst:

--1. Alle Produkte anzeigen — alle Spalten
-- 2. Welchen Datentyp haben preis und lagerbestand? — benutze TYPEOF()
-- 3. Alle Produkte wo der Preis fehlt (NULL)
-- 4. Alle Produkte wo der Lagerbestand vorhanden ist
-- 5. Alle Produkte anzeigen — fehlende Werte mit COALESCE ersetzen:

-- Kein Preis → 'Kein Preis'
-- Kein Lagerbestand → 'Unbekannt'
-- 6. Nur Name und Preis anzeigen — nach Preis aufsteigend sortiert

-- 1. 
SELECT * FROM produkte;


--
SELECT name,
              preis,
              typeof(preis)        AS preis,
              typeof(lagerbestand) AS lagerbestand
FROM produkte;

--3
SELECT * FROM produkte WHERE preis IS NULL;

-- 4:
SELECT * FROM produkte WHERE preis IS NOT NULL;

--5. 
SELECT name,
            COALESCE(CAST(preis AS TEXT), 'Kein Preis') AS preis,
            COALESCE(CAST(lagerbestand AS TEXT), 'Unbekannt') AS lagerbestand
FROM produkte;

--6. 
SELECT name,
            COALESCE(CAST(preis AS TEXT), 'Kein Preis') AS preis
FROM produkte
ORDER BY preis ASC;
