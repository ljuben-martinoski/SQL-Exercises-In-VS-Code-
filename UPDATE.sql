/* — UPDATE
📖 Was es ist
Mit UPDATE kannst du bestehende Daten in einer Tabelle verändern.
Du bestimmst mit WHERE, welche Zeile(n) geändert werden sollen.
⚠️ Wichtigste Regel: Vergiss WHERE nie — sonst änderst du alle Zeilen auf einmal!*/


-- Tabelle erstellen

DROP TABLE IF EXISTS schueler;

CREATE TABLE schueler (
    id      INTEGER,
    name    TEXT,
    age   INTEGER,
    stadt   TEXT
);

-- Daten einfügen
INSERT INTO schueler (id, name, age, stadt) VALUES (1, 'Anna',   22, 'Köln');
INSERT INTO schueler (id, name, age, stadt) VALUES (2, 'Max',    31, 'Stuttgart');
INSERT INTO schueler (id, name, age, stadt) VALUES (3, 'Lena',   26, 'Dresden');
INSERT INTO schueler (id, name, age, stadt) VALUES (4, 'Tom',    19, 'Leipzig');
INSERT INTO schueler (id, name, age, stadt) VALUES (5, 'Sara',   17, 'Berlin');
