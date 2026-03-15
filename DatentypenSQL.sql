
/*SQLite kennt 5 Datentypen: 
TEXT, INTEGER, REAL, BLOB und NULL. 
Anders als andere Datenbanken ist SQLite sehr flexibel — 
es versucht den richtigen Typ automatisch zu erkennen. 
Trotzdem solltest du immer den richtigen Typ wählen, 
damit deine Daten sauber und korrekt gespeichert werden.*/




-- Eine Tabelle die alle 5 Datentypen zeigt
CREATE TABLE IF NOT EXISTS datentypen_beispiel (
    id          INTEGER,   -- Ganze Zahlen: 1, 42, -10, 2024
    name        TEXT,      -- Text: 'Anna', 'Berlin', 'Hallo Welt'
    preis       REAL,      -- Kommazahlen: 9.99, 1.75, 3.14
    foto        BLOB,      -- Rohdaten: Bilder, Dateien (selten in SQL direkt)
    bemerkung   TEXT       -- NULL ist kein eigener Typ — jede Spalte kann NULL sein
);

-- -----------------------------------------------
-- TEXT — für alle Textwerte
-- -----------------------------------------------
CREATE TABLE IF NOT EXISTS texte_beispiel (
    id      INTEGER,
    vorname TEXT,       -- Namen
    email   TEXT,       -- E-Mail Adressen
    datum   TEXT        -- Datum als Text: '2024-01-15' (häufig in SQLite!)
);

INSERT INTO texte_beispiel (id, vorname, email, datum)
VALUES (1, 'Anna', 'anna@mail.de', '2024-01-15');

SELECT *
FROM texte_beispiel;

-- -----------------------------------------------
-- INTEGER — für ganze Zahlen
-- -----------------------------------------------
CREATE TABLE IF NOT EXISTS zahlen_beispiel (
    id          INTEGER,
    alter_j     INTEGER,    -- Alter: 25
    einwohner   INTEGER,    -- Große Zahlen: 3600000
    temperatur  INTEGER     -- Auch negative Zahlen: -10
);

INSERT INTO zahlen_beispiel (id, alter_j, einwohner, temperatur)
VALUES (1, 25, 3600000, -10);

SELECT *
FROM zahlen_beispiel;

-- -----------------------------------------------
-- REAL — für Kommazahlen
-- -----------------------------------------------
CREATE TABLE IF NOT EXISTS kommazahlen_beispiel (
    id      INTEGER,
    preis   REAL,       -- Preise: 29.99
    groesse REAL,       -- Körpergröße: 1.75
    note    REAL        -- Schulnote: 2.3
);

INSERT INTO kommazahlen_beispiel (id, preis, groesse, note)
VALUES (1, 29.99, 1.75, 2.3);

SELECT *
FROM kommazahlen_beispiel;

-- -----------------------------------------------
-- Datentyp einer Spalte prüfen mit TYPEOF()
-- -----------------------------------------------
SELECT typeof(42),         -- 'integer'
       typeof(3.14),       -- 'real'
       typeof('Hallo'),    -- 'text'
       typeof(NULL);       -- 'null'











