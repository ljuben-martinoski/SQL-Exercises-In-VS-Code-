




 -- Übung
-- Benutze die produkte Tabelle von oben.
--  Aufgabe A: Zähle wie viele Produkte es in der Kategorie 'Obst' gibt.
--  Aufgabe B: Berechne den Gesamtwert des Lagers — also preis * lager summiert über alle Produkte.
--   (Tipp: SUM(preis * lager) funktioniert direkt!)




-- Aufgabe A:

SELECT COUNT(kategorie) AS gesamteObst_PRODUKTE FROM produkte WHERE kategorie = 'Obst';

-- AUfgabe B;

SELECT SUM(preis * lager) AS gesamt_wert FROM produkte;


