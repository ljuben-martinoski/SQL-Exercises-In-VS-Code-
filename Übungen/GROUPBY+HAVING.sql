/*Übung
Benutze die produkte Tabelle von oben.
Aufgabe A: Zeige den Maximalpreis pro Kategorie — aber nur für Kategorien wo der Maximalpreis 
über 1.00 liegt.
Aufgabe B: Zeige alle Kategorien mit dem Gesamtwert des Lagers (SUM(preis * lager)) — 
sortiert vom größten zum kleinsten Gesamtwert.
(Tipp: ORDER BY funktioniert auch nach GROUP BY!)

 6 Übungen — GROUP BY + HAVING
Aufgabe 1: Zeige die Anzahl der Produkte pro Kategorie.
Aufgabe 2: Zeige den Durchschnittspreis pro Kategorie — gerundet auf 2 Stellen.
Aufgabe 3: Zeige den Maximalpreis pro Kategorie — aber nur Kategorien wo der 
Maximalpreis über 1.00 liegt.
Aufgabe 4: Zeige alle Kategorien mit dem Gesamtwert des Lagers (SUM(preis * lager)) — 
sortiert vom größten zum kleinsten.
Aufgabe 5: Zeige nur Kategorien die mehr als 1 Produkt haben — 
mit Anzahl und Gesamtlager.
Aufgabe 6: Zeige Kategorien wo der Durchschnittspreis zwischen 0.50 und 2.00 liegt — mit Durchschnittspreis und Anzahl der Produkte.
*/


-- Aufgabe A:
SELECT
    kategorie,
    MAX(preis) AS maximal_preis
FROM produkte
GROUP BY kategorie
HAVING MAX(preis) > 1.00;

-- Aufgabe B:
SELECT
    kategorie,
    SUM(preis * lager) AS Gesamteswert
FROM produkte
GROUP BY kategorie
ORder BY Gesamteswert DESC;

-- Aufgabe 1: Zeige die Anzahl der Produkte pro Kategorie.
SELECT
    kategorie,
    COUNT(*) AS anzahl
FROM produkte
GROUP BY kategorie;


-- Aufgabe 2: Zeige den Durchschnittspreis pro Kategorie — gerundet auf 2 Stellen.
SELECT
    kategorie,
    ROUND(AVG(preis), 2) AS Durchschnittspreis
FROM produkte
GROUP BY kategorie;


--Aufgabe 3: Zeige den Maximalpreis pro Kategorie — aber nur Kategorien wo der 
--Maximalpreis über 1.00 liegt.
SELECT
    kategorie,
    MAX(preis) AS MaximalPreis
FROM produkte
GROUP BY kategorie
HAVING MAX(preis) > 1;


-- Aufgabe 4: Zeige alle Kategorien mit dem Gesamtwert des Lagers (SUM(preis * lager)) — 
-- sortiert vom größten zum kleinsten.
SELECT
    kategorie,
    SUM(preis * lager) AS GEsamtwert
FROM produkte
GROUP BY kategorie
ORDER BY Gesamtwert DESC;


/*Aufgabe 5: Zeige nur Kategorien die mehr als 1 Produkt haben — 
mit Anzahl und Gesamtlager.*/

SELECT
    kategorie,
    COUNT(*) AS anzahl,
    SUM(lager) AS gesamtlager
FROM produkte
GROUP BY kategorie
HAVING COUNT(*) > 1;





/*Aufgabe 6: Zeige Kategorien wo der Durchschnittspreis zwischen 0.50 und 2.00 liegt — 
mit Durchschnittspreis und Anzahl der Produkte.
*/

SELECT
    kategorie,
    AVG(preis) AS Durchschnittspreis
FROM produkte
GROUP BY kategorie
HAVING AVG(preis) BETWEEN 0.50 AND 2.00;
