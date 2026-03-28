/*
Übung
Benutzen wir die produkte Tabele.
Aufgabe 1: Zeige alle Produkte deren Preis unter dem Durchschnittspreis liegt — 
mit Name und Preis.
Aufgabe 2: Zeige das Produkt mit dem kleinsten Lagerbestand — mit Name und Lager.
Aufgabe 3: Zeige alle Produkte die zur gleichen Kategorie wie 'Brot' gehören.
(Tipp: Innere Abfrage findet zuerst die Kategorie von Brot!)
*/

-- Aufgabe 1

SELECT name, preis
FROM produkte
WHERE preis < (SELECT AVG(preis) FROM produkte);

-- Aufgabe 2

SELECT name, lager
FROM produkte
WHERE lager = (SELECT MIN(lager) FROM produkte);

-- Aufgabe 3

SELECT name, kategorie
FROM produkte
WHERE kategorie = (
    SELECT kategorie
    FROM produkte
    WHERE name = 'Brot'
    GROUP BY kategorie
    
);
