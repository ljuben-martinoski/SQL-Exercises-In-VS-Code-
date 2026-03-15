
/*NULL bedeutet kein Wert — 
nicht 0, nicht leer, 
sondern wirklich nichts. 
Das passiert wenn ein Wert unbekannt oder nicht vorhanden ist. 
NULL ist besonders weil man es nicht mit = vergleichen kann — 
dafür gibt es IS NULL und IS NOT NULL.*/


-- Zuerst: Neue Personen MIT fehlenden Werten einfügen
-- Fehlende Werte werden automatisch NULL
INSERT INTO personen (id, name, alter_j, groesse, stadt) 
VALUES 
    (6, 'Frank Bauer', NULL, 1.78, 'Dresden'),-- alter is unbekannt
    (7, 'Greta Schultz', 27, NULL, NULL),
    (8, 'Hans Winter', 33, 1.82, NULL);









