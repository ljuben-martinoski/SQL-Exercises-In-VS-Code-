/* Subqueries (Unterabfragen)

📖 Was es ist

Eine Subquery ist eine Abfrage innerhalb einer Abfrage — 
wie eine Frage die eine andere Frage beantwortet.
Zuerst wird die innere Abfrage ausgeführt, dann benutzt die äußere Abfrage ihr Ergebnis.
Subqueries stehen immer in runden Klammern (...).*/

-- Subquery in WHERE — Vergleich mit einem berechneten Wert:
-- Welche Produkte kosten mehr als der Durchschnitt?
-- Ohne Subquery müsstest du zuerst den Durchschnitt berechnen,
-- dann eine zweite Abfrage schreiben — mit Subquery geht es in einem!

SELECT name, preis
FROM produkte
WhERE preis > (SELECT AVG(preis) FROM produkte);


-- Subquery mit dem teuersten Produkt
-- Welches Produkt ist am teuersten? — Name und Preis anzeigen

SELECT name, preis
FROM produkte
WHERE preis = (SELECT MAX(preis) FROM produkte);

-- Subquery mit IN — mehrere Werte vergleichen
-- Welche Produkte gehören zu Kategorien mit mehr als 1 Produkt?

SELECT name, kategorie
FROM produkte
WHERE kategoorie IN (
    SELECT kategorie
    FROM produkte
    GROUP BY kategorie
    HAVING COUNT(*) > 1
);

/* 
 Wie SQLite eine Subquery ausführt
```
SELECT name, preis
FROM produkte
WHERE preis > (SELECT AVG(preis) FROM produkte);

Schritt 1 — Innere Abfrage wird zuerst ausgeführt:
    SELECT AVG(preis) FROM produkte → Ergebnis: 1.40

Schritt 2 — Äußere Abfrage benutzt das Ergebnis:
    SELECT name, preis FROM produkte WHERE preis > 1.40
*/

-- 💡 Wichtigste Erkenntnis: 
-- Eine Subquery ist eine normale SELECT-Abfrage in Klammern — 
--SQLite führt sie zuerst aus und benutzt ihr Ergebnis für die äußere Abfrage!


/*
Subquery vs JOIN — wann was benutzen?
     Situation                                         Benutze     
Vergleich mit berechnetem Wert (AVG, MAX)              Subquery
Daten aus zwei Tabellen kombinieren                      JOIN
Liste von Werten zum Filtern                           Subquery mit IN
*/