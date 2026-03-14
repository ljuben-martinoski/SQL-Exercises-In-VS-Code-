/*Mit ORDER BY sortierst du die Ergebnisse — 
aufsteigend (ASC) oder absteigend (DESC). 
Mit LIMIT begrenzt du die Anzahl der zurückgegebenen Zeilen. 
Beide Befehle kommen immer am Ende der Abfrage, nach WHERE.*/


-- Aufsteigend sortieren nach Alter (jüngste zuerst)
SELECT *
FROM personen
ORDER BY alter_j ASC;

-- Absteigend sortieren nach Alter (älteste zuerst)
SELECT *
FROM personen
ORDER BY alter_j DESC;

-- Alphabetisch nach Stadt sortieren
SELECT *
FROM personen
ORDER BY stadt ASC;

-- Nur die 3 jüngsten Personen anzeigen
SELECT *
FROM personen
ORDER BY alter_j ASC
LIMIT 3;

-- WHERE und ORDER BY kombinieren
-- Nur Berliner, sortiert nach Alter aufsteigend
SELECT *
FROM personen
WHERE stadt = 'Berlin'
ORDER BY alter_j ASC;

-- Nach mehreren Spalten sortieren
-- Erst nach Stadt (A→Z), dann innerhalb gleicher Stadt nach Alter (jung→alt)
SELECT *
FROM personen
ORDER BY stadt ASC, alter_j ASC;
 