
/* FOREIGN KEY
📖 Was es ist
Ein FOREIGN KEY verbindet zwei Tabellen miteinander — 
wie ein Verweis von einer Tabelle auf eine andere.
Zum Beispiel: Eine Tabelle bestellungen verweist auf eine Tabelle kunden — 
jede Bestellung gehört zu einem bestimmten Kunden.
So vermeidest du Datendopplungen und hältst deine Datenbank sauber und struktur*/



-- Erst die "Eltern"-Tabelle erstellen (wird verwiesen)
DROP TABLE IF EXISTS autoren;
CREATE TABLE autoren (
    id   INTEGER PRIMARY KEY,
    name TEXT,
    land TEXT
);

-- Daten einfügen
INSERT INTO autoren (name, land) VALUES ('Alfred Adler',  'Österreich');
INSERT INTO autoren (name, land) VALUES ('Sigmund Freud', 'Österreich');
INSERT INTO autoren (name, land) VALUES ('Robert Greene', 'USA');



-- Dann die "Kind"-Tabelle erstellen (verweist auf Eltern)
-- autor_id ist der FOREIGN KEY — er zeigt auf autoren.id
DROP TABLE IF EXISTS buecher;

CREATE TABLE buecher (
    id       INTEGER PRIMARY KEY,
    titel    TEXT,
    jahr     INTEGER,
    autor_id INTEGER,
    FOREIGN KEY (autor_id) REFERENCES autoren(id)
);

-- Daten einfügen
-- autor_id muss eine id sein, die in "autoren" existiert!
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Psychology für Kinder', 1927, 1);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Little Hans',           1909, 2);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Power',                 1998, 3);
INSERT INTO buecher (titel, jahr, autor_id) VALUES ('Traumdeutung',          1899, 2);

-- Beide Tabellen anzeigen
SELECT * FROM autoren;
SELECT * FROM buecher;


-- ⚠️ Wichtige Regel — Reihenfolge beim Erstellen


-- ✅ Richtige Reihenfolge:
-- 1. Zuerst die Eltern-Tabelle (autoren)
-- 2. Dann die Kind-Tabelle (buecher)

-- ❌ Falsche Reihenfolge:
-- buecher zuerst erstellen — dann kennt SQLite 
--"autoren" noch nicht!







