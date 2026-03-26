



/* GROUP BY + HAVING
📖 Was es ist
GROUP BY teilt die Tabelle in Gruppen auf und berechnet Aggregatfunktionen pro Gruppe.
Zum Beispiel: Nicht den Durchschnittspreis aller Produkte — sondern den Durchschnittspreis pro Kategorie.
HAVING ist wie WHERE — aber für Gruppen, nicht für einzelne Zeile*/


 SELECT * FROM produkte;

-- GROUP BY --pro zeilen zählen

-- Wie viele Produkte gibt es pro Kategorie??

SELECT
    kategorie,
    COUNT(*) AS anzahl 
FROM produkte GROUP BY kategorie;


-- GROUP BY mit mehreren Aggregatfunktionen:
-- Durchschnittspreis und Gesamtlager pro Kategorie
SELECT
    kategorie,
    ROUND(AVG(preis), 2) AS DurchschnittsPreis,
    SUM(lager) AS gesamt_lager
FROM produkte GROUP BY kategorie;

 -- HAVING — Gruppen filtern

-- WHERE filtert einzelne Zeilen — VOR dem Gruppieren
-- HAVING filtert ganze Gruppen — NACH dem Gruppieren

-- Nur Kategorien anzeigen die mehr als 1 Produkt haben
SELECT
    kategorie,
    COUNT(*) AS anzahl
FROM produkte
GROUP BY kategorie
HAVING COUNT(*) > 1;

-- WHERE + GROUP BY + HAVING zusammen

-- Reihenfolge ist wichtig:
-- 1. WHERE filtert zuerst einzelne Zeilen
-- 2. GROUP BY gruppiert die übrigen Zeilen
-- 3. HAVING filtert dann die Gruppen

-- Nur teure Produkte (preis > 0.50) gruppieren
-- und nur Kategorien mit Gesamtlager über 50 zeigen

SELECT
    kategorie,
    COUNT(*) AS anzahl,
    SUM(lager) AS gesamt_lager
FROM produkte
WHERE preis > 0.50
GROUP BY kategorie
HAVING SUM(lager) > 50;
