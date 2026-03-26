/*
Aufgabe 1: Erstelle einen Index auf der Spalte kategorie.
Aufgabe 2: Erstelle einen Index auf der Spalte preis.
Aufgabe 3: Zeige alle Indizes der produkte Tabelle mit PRAGMA.
Aufgabe 4: Lösche den Index auf preis wieder.
*/



-- Aufgabe 1
CREATE INDEX idx_kategorie ON produkte(kategorie);

--Aufgabe 2
CREATE INDEX idx_preis ON produkte(preis);

-- Aufgabe 3
PRAGMA index_list('produkte');

-- Aufgabe 4
DROP INDEX idx_preis;

