/*JOIN
📖 Was es ist
Mit JOIN kombinierst du Daten aus zwei Tabellen in einer einzigen Abfrage.
Statt nur IDs zu sehen, siehst du die echten Namen und Werte aus der verknüpften Tabelle.
Es gibt zwei wichtige Typen: INNER JOIN (nur Übereinstimmungen) und LEFT JOIN (alle + Übereinstimmungen).*/


/*DROP TABLE IF EXISTS buecher;
CREATE TABLE buecher (
    id       INTEGER PRIMARY KEY,
    titel    TEXT,
    jahr     INTEGER,
    autor_id INTEGER,
    FOREIGN KEY (autor_id) REFERENCES autoren(id)
);

DROP TABLE IF EXISTS autoren;
CREATE TABLE autoren (
    id   INTEGER PRIMARY KEY,
    name TEXT,
    land TEXT
);


INSERT INTO autoren (name, land) VALUES ('Alfred Adler',  'Österreich');
INSERT INTO autoren (name, land) VALUES ('Sigmund Freud', 'Österreich');
INSERT INTO autoren (name, land) VALUES ('Robert Greene', 'USA');
INSERT INTO autoren (name, land) VALUES ('Unbekannt',     'Unbekannt'); -- kein Buch!

INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Psychology für Kinder', 1927, 1);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Little Hans',           1909, 2);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Power',                 1998, 3);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Traumdeutung',          1899, 2);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Geheimnisvolles Buch',  2000, NULL); -- kein Autor!*/



-- INNER JOIN zeigt nur Zeilen, die in BEIDEN Tabellen einen Match haben
-- Bücher ohne Autor und Autoren ohne Buch werden NICHT angezeigt

SELECT
    buecher.titel,
    buecher.jahr,
    autoren.name AS autor_name,
    autoren.land AS autor_land
FROM buecher
INNER JOIN autoren ON buecher.autor_id = autoren.id;



-- 🔗 LEFT JOIN — alle + Übereinstimmungen
-- LEFT JOIN zeigt ALLE Zeilen der linken Tabelle (buecher)
-- Wenn kein Match existiert, steht NULL bei den Autor-Spalten

SELECT
    b.titel,
    b.jahr,
    a.name AS autor_name
FROM buecher b
LEFT JOIN autoren a ON b.autor_id = a.id;








    

