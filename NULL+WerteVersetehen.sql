
/*NULL bedeutet kein Wert — 
nicht 0, nicht leer, 
sondern wirklich nichts. 
Das passiert wenn ein Wert unbekannt oder nicht vorhanden ist. 
NULL ist besonders weil man es nicht mit = vergleichen kann — 
dafür gibt es IS NULL und IS NOT NULL.*/


-- Zuerst: Neue Personen MIT fehlenden Werten einfügen
-- Fehlende Werte werden automatisch NULL
--INSERT INTO personen (id, name, alter_j, groesse, stadt) 
--VALUES 
    --(6, 'Frank Bauer', NULL, 1.78, 'Dresden'),-- alter is unbekannt
    --(7, 'Greta Schultz', 27, NULL, NULL),
    --(8, 'Hans Winter', 33, 1.82, NULL);


-- -----------------------------------------------
-- NULL finden mit IS NULL
-- -----------------------------------------------

-- Alle Personen wo das Alter fehlt

SELECT * FROM personen WHERE alter_j IS NULL;

-- Alle Personen wo die Stadt fehlt
SELECT * FROM personen WHERE stadt IS NULL;

-- -----------------------------------------------
-- Nicht-NULL finden mit IS NOT NULL
-- -----------------------------------------------

-- Alle Personen wo die Stadt bekannt ist
SELECT * FROM personen WHERE stadt IS NOT NULL;

-- -----------------------------------------------
-- HÄUFIGER FEHLER — so funktioniert es NICHT!
-- -----------------------------------------------

-- FALSCH: = NULL funktioniert nie in SQL!
-- SELECT * FROM personen WHERE alter_j = NULL;   -- gibt immer 0 Zeilen zurück!
-- RICHTIG: immer IS NULL benutzen

-- -----------------------------------------------
-- COALESCE — NULL durch einen Standardwert ersetzen
-- Gibt den ersten Wert zurück der nicht NULL ist
-- -----------------------------------------------

-- NULL in der Ausgabe durch 'Unbekannt' ersetzen

SELECT name,
       COALESCE(stadt, 'Unbekannt') AS stadt,
       COALESCE(CAST(alter_j AS TEXT), 'Unbekannt') AS alter_j
FROM personen;







