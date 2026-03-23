/*COUNT,SUM,AVG,MIN, MAX 
Was es ist
Aggregatfunktionen berechnen einen einzigen Wert aus vielen Zeilen.Zum Beispiel: 
Wie viele Bucher gibt es?
Was ist das älteste Buch?
Was ist der durchschnitt?
Sie sind ideal um Daten zusammenzufassen und auszuwerten.
*/

DROP TABLE IF EXISTS produkte;

CREATE TABLE  produkte (
    id  INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    preis REAL,
    lager INTEGER,
    kategorie TEXT
);


INSERT INTO produkte (name, preis, lager, kategorie) 
VALUES
    ('Apfel',     0.50,    100, 'Obst' ),
    ('Banane',     0.30,   150, 'Obst'),
    ('Karotte',    0.80,   80, 'Gemüse'),
    ('Tomate',     1.20,   60, 'Gemüse'),
    ('Milch',      1.50,   40, 'Milchprodukt'),
    ('Käse',       3.00,   20, 'Milchprodukt'),
    ('Brot',       2.50,   30, 'Backware');

-- COUNT — Zeilen zählen
-- Wie viele Produkte gibt es insgesamt?

SELECT COUNT(*) AS anzahl_produkte FROM produkte;

-- Wie viele Produkte haben einen Preis über 1.00?

SELECT COUNT(*) AS teure_produkte FROM produkte WHERE preis > 1;

-- Wie viele Artikel liegen insgesamt im Lager?

SELECT SUM(lager) AS gesamt_lager FROM produkte;

-- Was ist der Durchschnittspreis aller Produkte?

SELECT ROUND(AVG(preis), 2) AS durchshnittspreis_alleProdukte FROM produkte; 

-- Was ist das teuerste und das günstigste Produkte
SELECT 
    MAX(preis)  AS teuerste_preis,
    MIN(preis)   AS   guenstigster_preis
FROM produkte;

-- Komplette Übersicht in einem Befehl

SELECT
    COUNT(*)       AS anzahl,
    SUM(lager)     AS gesamt_lager,
    ROUND(AVG(preis), 2)  AS   durschschnitspreis,
    MAX(preis)            AS max_preis,
    MIN(preis)            AS min_preis
FROM produkte;





     