-- VARIANTE 1: Alle Spalten und alle Zeilen auswählen
-- Das * bedeutet "gib mir alles"
SELECT *
FROM personen;

-- VARIANTE 2: Nur bestimmte Spalten auswählen
-- Spaltennamen durch Komma trennen
SELECT name, stadt
FROM personen;

-- VARIANTE 3: Nur eine einzige Spalte
SELECT name
FROM personen;

-- VARIANTE 4: Spalten umbenennen mit AS (Alias)
-- Der Alias ist nur für die Anzeige — die Tabelle bleibt unverändert
SELECT name      AS "Voller Name",
       alter_j   AS "Alter",
       stadt     AS "Wohnort"
FROM personen;

