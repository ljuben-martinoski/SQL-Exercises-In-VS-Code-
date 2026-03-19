/* DELETE
📖 Was es ist
Mit DELETE entfernst du Zeilen aus einer Tabelle — 
die Tabelle selbst bleibt bestehen.
Genau wie bei UPDATE gilt: WHERE niemals vergessen!
Ohne WHERE löschst du alle Zeilen auf einmal — 
und das lässt sich nicht rückgängig machen!*/


-- Eine einzelne Zeile löschen
-- Tom (id = 4) wird gelöscht

DELETE FROM schueler WHERE id = 4;


-- Mehrere Zeilen auf einmal löschen
-- Alle Schüler über 25 löschen

DELETE FROM schueler WHERE alter > 25;

/*Die zwei gefährlichsten Befehle
sql-- OHNE WHERE — löscht ALLE Zeilen, Tabelle bleibt leer!
DELETE FROM schueler;

-- Tabelle komplett löschen (inkl. Struktur)
-- Das ist DROP TABLE — noch radikaler als DELETE!
DROP TABLE schueler;*/

