
-- Deine 6 Abfragen
--1. Versuche alle 6 Abfragen selbst zu schreiben!
--2. Abfrage 1 — Zeige alle Bücher mit allen Spalten an
--3. Abfrage 2 — Zeige nur titel, autor und preis — sortiert nach Preis aufsteigend. Ersetze fehlende Preise mit 'Kein Preis' (COALESCE)
--4. Abfrage 3 — Zeige alle Bücher die nach 1950 erschienen sind UND verfügbar sind (verfuegbar = 'ja')
--5. Abfrage 4 — Zeige alle Bücher von Franz Kafka ODER die zum Genre Fantasy gehören
--6. Abfrage 5 — Zeige alle Bücher die zwischen 100 und 350 Seiten haben — sortiert nach Seitenanzahl aufsteigend (BETWEEN)
--7. Abfrage 6 — Zeige die 3 teuersten Bücher — nur titel, autor und preis (LIMIT)



--2. Abfrage 1 — Zeige alle Bücher mit allen Spalten an
SELECT * FROM buecher;

--3. Abfrage 2 — Zeige nur titel, autor und preis — sortiert nach Preis aufsteigend. 
--Ersetze fehlende Preise mit 'Kein Preis' (COALESCE)
SELECT * FROM buecher ORDER BY titel, autor, preis ASC;



