DROP TABLE IF EXISTS schuler;
CREATE TABLE schuler (
    id INT PRIMARY KEY,
    name TEXT,
    "alter" TEXT,
    stadt TEXT
);

DROP TABLE IF EXISTS faecher;
CREATE TABLE faecher (
    id INT PRIMARY KEY,
    fach_name TEXT,
    lehrer TEXT
);
DROP TABLE IF EXISTS noten;
CREATE TABLE noten (
    id INT PRIMARY KEY,
    schule_id INT,
    fach_id INT,
    note REAL,
    FOREIGN KEY (schule_id)  REFERENCES schuler(id),
    FOREIGN KEY (fach_id)  REFERENCES faecher(id)
);


INSERT INTO schuler (id, name, "alter", stadt) VALUES (1, 'Anna', 22, 'Berlin');
INSERT INTO schuler (id, name, "alter", stadt) VALUES (2, 'Ben', 35, 'Munich');
INSERT INTO schuler (id, name, "alter", stadt) VALUES (3, 'Clara', 22, 'Hamburg');
INSERT INTO schuler (id, name, "alter", stadt) VALUES (4, 'David', 41, 'Berlin');
INSERT INTO schuler (id, name, "alter", stadt) VALUES (5, 'Eva', 30, 'Köln');

INSERT INTO faecher (id, fach_name, lehrer) VALUES (1, 'Mathe', 'Max Mustermann');
INSERT INTO faecher (id, fach_name, lehrer) VALUES (2, 'Deutsch', 'Maria Musterfrau');
INSERT INTO faecher (id, fach_name, lehrer) VALUES (3, 'Englisch', 'Max Mustermann');
INSERT INTO faecher (id, fach_name, lehrer) VALUES (4, 'Biologie', 'Maria Musterfrau');
INSERT INTO faecher (id, fach_name, lehrer) VALUES (5, 'Chemie', 'Max Mustermann');

INSERT INTO noten (id, schule_id, fach_id, note) 
VALUES 
    (1, 1, 1, 5.5),
    (2, 2, 2, 4.5),
    (3, 3, 3, 4.0),
    (4, 4, 4, 2.5),
    (5, 5, 5, 3.5);

-- Abfragfe 1: Zeige alle Schüler sortiert nach Name.
SELECT * FROM schuler ORDER BY name;

-- Abfrage 2: Zeige alle Noten zusammen mit dem Schülernamen und dem Fachnamen.
-- (Tipp: JOIN über alle 3 Tabellen!)
SELECT schuler.name, faecher.fach_name, noten.note
FRom schuler
JOIN noten ON schuler.id = noten.schule_id
JOIN faecher ON noten.fach_id = faecher.id;



-- Abfrage 3: Zeige den Durchschnitt aller Noten insgesamt — gerundet auf 2 Stellen.
SELECT
    ROUND(AVG(note), 2) AS Gesamtendurchschnitt
FROM noten;

-- Abfrage 4: Zeige die Durchschnittsnote pro Fach — sortiert von bester zu schlechtester Note.
SELECT
    f.fach_name,
    ROUND(AVG(n.note), 2) AS Durchschnittsnote
FROM 
    noten n
JOIN
    faecher f ON n.fach_id = f.id
GROUP BY 
    f.fach_name
ORDER BY
    Durchschnittsnote ASC;


-- Abfrage 5  Zeige die Durchschnittsnote pro Schüler — mit Schülername und Durchschnitt.
SELECT
    s.name,
    ROUND(AVG(n.note), 2) AS Durchschnittsnote
FROM
    noten n
JOIN
    schuler s ON n.schule_id =  s.id
GROUP BY 
    s.name
ORDER BY 
    Durchschnittsnote ASC;

-- Abfrage 6 Zeige nur Schüler deren Durchschnittsnote besser als 3.0 ist.
SELECT 
    s.name,
    AVG(n.note) AS Durchschnittsnote
FROM 
    noten n
JOIN 
    schuler s ON n.schule_id = s.id
GROUP BY 
    s.name
HAVING 
    AVG(n.note) < 3.0
ORDER BY 
    AVG(n.note) ASC;


-- Abfrage 7: Zeige den Schüler mit der besten Einzelnote — mit Name, Fach und Note.
-- (Tipp: Subquery mit MIN!)

SELECT
     s.name AS Schelername,
     f.fach_name,
     n.note
FROM noten n 
JOIN schuler s ON n.schule_id = s.id
JOIN faecher f ON n.fach_id = f.id
WHERE
     n.note = (SELECT MIN(note) FROM noten);

-- Abfrage 8: Schüler mit mehr als 1 Note
SELECT
    s.name,
    COUNT(*) AS anzahl_noten
FROM noten n
JOIN schueler s ON n.schueler_id = s.id
GROUP BY s.name
HAVING COUNT(*) > 1;
