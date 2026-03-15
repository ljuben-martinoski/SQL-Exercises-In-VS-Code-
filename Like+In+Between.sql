
/*Was es ist:

LIKE, IN und BETWEEN sind spezielle Filter-Operatoren für WHERE. 
Mit LIKE suchst du nach Textmustern, 
mit IN prüfst du ob ein Wert in einer Liste vorkommt, 
und mit BETWEEN filterst du einen Wertebereich. 
Sie machen deine Abfragen viel kürzer und lesbarer!*/



-- -----------------------------------------------
-- LIKE — Textmuster suchen(text paterns searching)
-- % = beliebig viele Zeichen (auch keines)
-- _ = genau ein Zeichen
-- -----------------------------------------------

-- Alle Personen deren Name mit 'A' beginnt

SELECT * FROM personen WHERE name LIKE 'A%';

---- Alle Personen deren Name mit 'n' endet
SELECT * FROM personen WHERE name LIKE '%n';

-- Alle Städte die genau 4 Buchstaben haben
-- _ steht für genau einen Buchstaben
SELECT * FORM personen WHERE stadt LIKE '____';

-- -----------------------------------------------
-- IN — Wert aus einer Liste prüfen
-- Kürzer als mehrere OR-Bedingungen
-- -----------------------------------------------

-- Alle Personen aus Berlin, Hamburg oder Köln
-- Ohne IN: WHERE stadt = 'Berlin' OR stadt = 'Hamburg' OR stadt = 'Köln'

SELECT * FROM personen WHERE stadt IN ('Berlin', 'Hamburg', 'Köln');

-- Alle Personen die NICHT aus diesen Städten kommen
SELECT * FROM personen WHERE stadt NOT IN ('Berlin', 'Hamburg', 'Köln');

-- -----------------------------------------------
-- BETWEEN — Wertebereich prüfen (inklusiv!)
-- Beide Grenzwerte sind eingeschlossen
-- -----------------------------------------------

-- Alle Personen zwischen 25 und 35 Jahren (25 und 35 sind eingeschlossen!

SELECT * FROM personen WHERE alter_j BETWEEN 25 AND 35;

-- Alle Personen die NICHT zwischen 25 und 35 sind

SELECT * FROM personen WHERE alter_j NOT BETWEEN 25 AND 35;

