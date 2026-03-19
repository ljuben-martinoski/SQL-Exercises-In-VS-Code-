/* PRIMARY KEY
📖 Was es ist
Ein PRIMARY KEY ist eine Spalte, 
die jede Zeile eindeutig identifiziert — wie eine Ausweisnummer.
Zwei Zeilen können niemals dieselbe ID haben, und der Wert darf nie leer (NULL) sein.
Mit INTEGER PRIMARY KEY in SQLite wird die ID sogar automatisch hochgezählt — 
du musst sie nicht selbst eingeben!*/


-- ❌ OHNE Primary Key — gefährlich!
-- Zwei Annas mit derselben ID möglich, keine Eindeutigkeit
DROP TABLE schueler_schlecht;
CREATE TABLE schueler_schlecht (
    id    INTEGER PRIMARY KEY,
    name  TEXT,
    "alter" INTEGER
);

INSERT INTO schueler_schlecht VALUES (1, 'Anna', 22);
INSERT INTO schueler_schlecht VALUES (1, 'Anna', 22); -- Duplikat! Kein Fehler!


/*-- ✅ MIT Primary Key — sicher und eindeutig
CREATE TABLE schueler (
    id    INTEGER PRIMARY KEY,  -- eindeutig, nie NULL, nie doppelt
    name  TEXT,
    alter INTEGER,
    stadt TEXT
);*/


-- PRIMARY KEY zählt automatisch hoch (AUTOINCREMENT)
-- Du musst die id NICHT selbst angeben!
--INSERT INTO schueler (name, alter, stadt) VALUES ('Anna',  22, 'Köln');
--INSERT INTO schueler (name, alter, stadt) VALUES ('Max',   31, 'Stuttgart');
--INSERT INTO schueler (name, alter, stadt) VALUES ('Lena',  26, 'Dresden');
--INSERT INTO schueler (name, alter, stadt) VALUES ('Tom',   19, 'Leipzig');

-- SQLite vergibt id = 1, 2, 3, 4 automatisch!
--SELECT * FROM schueler;

/* ✅ Erwartete Ausgabe
+----+------+-------+-----------+
| id | name | alter | stadt     |
+----+------+-------+-----------+
|  1 | Anna |    22 | Köln      |
|  2 | Max  |    31 | Stuttgart |
|  3 | Lena |    26 | Dresden   |
|  4 | Tom  |    19 | Leipzig   |
+----+------+-------+-----------+
*/


