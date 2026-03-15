

--  Tabelle autos

-- 1. Alle Autos deren Marke mit 'B' beginnt 
-- 2. Alle Autos von VW, Toyota oder Mercedes 
-- 3. Alle Autos die zwischen 20000 und 32000 Euro kosten 
-- 4. Alle Autos die NICHT zwischen 2020 und 2021 gebaut wurden 


-- 1. Alle Autos deren Marke mit 'B' beginnt (LIKE)
SELECT * FROM autos WHERE marke LIKE 'B%';

-- 2. Alle Autos von VW, Toyota oder Mercedes (IN)
SELECT * FROM autos WHERE  marke IN ('VW', 'Toyota', 'Mercedes');

-- 3. Alle Autos die zwischen 20000 und 32000 Euro kosten 
SELECT * FROM autos WHERE preis BETWEEN 20000 AND 32000;


-- 4. Alle Autos die NICHT zwischen 2020 und 2021 gebaut wurden 
SELECT * FROM autos WHERE baujahr NOT BETWEEN 2020 AND 2021;




