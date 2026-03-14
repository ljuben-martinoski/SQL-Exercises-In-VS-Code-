
/*WHERE ist wie ein Filter — 
du sagst der Datenbank: „Gib mir nur die Zeilen, die diese Bedingung erfüllen." 
Ohne WHERE bekommst du immer alle Zeilen. 
Mit WHERE kannst du gezielt nach bestimmten Werten suchen — 
mit Zahlen, Text oder Vergleichen.*/







-- VERGLEICHSOPERATOREN: = < > <= >= !=
-- -----------------------------------------------

-- Alle Personen aus Berlin
SELECT *
FROM personen
WHERE stadt = 'Berlin';

-- Alle Personen die älter als 30 sind
SELECT *
FROM personen
WHERE alter_j > 30;

-- Alle Personen die 30 Jahre oder jünger sind
SELECT *
FROM personen
WHERE alter_j <= 30;

-- Alle Personen die NICHT aus Berlin kommen
-- != bedeutet "ungleich"
SELECT *
FROM personen
WHERE stadt != 'Berlin';

-- MEHRERE BEDINGUNGEN mit AND und OR
-- -----------------------------------------------

-- AND = beide Bedingungen müssen zutreffen
-- Alle Personen aus Berlin die älter als 25 sind
SELECT *
FROM personen
WHERE stadt = 'Berlin'
  AND alter_j > 25;

-- OR = mindestens eine Bedingung muss zutreffen
-- Alle Personen aus Berlin ODER aus München
SELECT *
FROM personen
WHERE stadt = 'Berlin'
   OR stadt = 'München';

-- AND und OR kombinieren — Klammern zur Sicherheit!
-- Alle Personen aus Berlin oder München die älter als 25 sind
SELECT *
FROM personen
WHERE (stadt = 'Berlin' OR stadt = 'München')
  AND alter_j > 25;
 