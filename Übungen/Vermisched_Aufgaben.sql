/*Aufgabe 1 – INNER JOIN (2 Punkte)
Zeige alle Mitarbeiter mit ihrer Abteilungsbezeichnung.
Gib aus: Name, Abteilungsname
*/
SELECT 
    m.Name,
    a.Abteilungsname
FROM Mitarbeiter m
INNER JOIN Abteilung a ON m.ABT_ID = a.ABT_ID;



/*Aufgabe 2 – LEFT JOIN + NULL (3 Punkte)
Zeige alle Mitarbeiter, auch wenn sie keiner Abteilung zugeordnet sind.
Gib aus: Name, Abteilungsname (NULL soll als 'Keine Abteilung' erscheinen)

💡 Tipp: Es gibt eine SQL-Funktion dafür...
*/
SELECT
    m.Name,
    COALESCE(a.Abteilungsname, 'Keine Abteilung') AS Abteilungsname
FROM Mitarbeiter m
LEFT JOIN Abteilung a ON m.ABT_ID = a.ABT_ID;


/*Aufgabe 3 – Aggregatfunktion (2 Punkte)
Berechne das Durchschnittsgehalt aller Mitarbeiter.
Spalte soll heißen: Durchschnittsgehalt
*/
SELECT
    m.Gehalt,
    AVG(Gehalt) AS Durchschnittsgehalt
FROM Mitarbeiter m;


/*Aufgabe 4 – GROUP BY + HAVING (4 Punkte)
Zeige alle Abteilungen, in denen das Durchschnittsgehalt über 3.600 € liegt.
Gib aus: ABT_ID, Durchschnittsgehalt
*/

SELECT
    ABT_ID,
    AVG(Gehalt) AS Durchschnittsgehalt
FROM Mitarbeiter
GROUP BY ABT_ID
HAVING AVG(Gehalt) > 3600;

/*Aufgabe 5 – WHERE vs. HAVING (3 Punkte)
Erkläre in 2–3 Sätzen den Unterschied zwischen WHERE und HAVING.
Gib dann ein konkretes Beispiel mit einer der obigen Tabellen.
*/

-- where is benutzt für einzelne Datensätze zu auswählen,bevor eine Gruppierung stattfindet , und having filtert dagegen die Ergebnisse nachdem mit GROUP BY
--HAVING ist immer vor GROUP BY ohne das sql erlaubt das nicht
--BEispiele WHERE Gehalt > 3000
-- HAVING AVG(Gehalt) > 3000

/*Aufgabe 6 – Subquery (4 Punkte)
Zeige alle Mitarbeiter, deren Gehalt über dem Durchschnittsgehalt aller Mitarbeiter liegt.
Gib aus: Name, Gehalt

⚠️ Löse das mit einer Unterabfrage (kein JOIN)
*/
SELECT
    Name,
    Gehalt
FROM Mitarbeiter
WHERE Gehalt > (SELECT AVG(Gehalt) FROM Mitarbeiter);



/*Aufgabe 7 – RIGHT JOIN (3 Punkte)
Zeige alle Abteilungen mit ihren Mitarbeitern – auch Abteilungen ohne Mitarbeiter.
Gib aus: Abteilungsname, Mitarbeitername
*/
SELECT
    a.Abteilungsname,
    m.Name AS Mitarbeitername
FROM Mitarbeiter m
RIGHT JOIN Abteilung a ON m.ABT_ID = a.ABT_ID;
/*Aufgabe 8 – ORDER BY + LIMIT (2 Punkte)
Zeige die 3 bestbezahlten Mitarbeiter.
Gib aus: Name, Gehalt – absteigend sortiert.
*/
SELECT
    Gehalt,
    Name
FROM Mitarbeiter m 
ORDER BY Gehalt DESC Limit 3;
/*Aufgabe 9 – COUNT + NULL-Falle (3 Punkte)
Wie viele Mitarbeiter haben eine zugewiesene Abteilung (ABT_ID ist nicht NULL)?
Schreibe zwei Varianten:

a) mit COUNT(*) == SELECT COUNT(*) FROM Mitarbeiter WHERE ABT_ID is NOT NULL;
b) mit COUNT(ABT_ID) == SELECT COUNT(ABT_ID) FROM Mitarbeiter;

Erkläre den Unterschied im Ergebnis.
=COUNT(*) zählt alle Zeilen(das Ergebnis ist nur durch das WHERE gefiltert)
= COUNT(Spaltenname) ignoriert automatisch alle NULL Werte in dieser spezifischen Spalt.
*/

/*Aufgabe 10 – JOIN über 3 Tabellen (5 Punkte)
Zeige alle Projekte zusammen mit dem Namen der zugehörigen Abteilung.
Auch Projekte ohne Abteilungszuordnung sollen erscheinen.
Gib aus: Projektname, Budget, Abteilungsname.
*/

SELECT p.Projctname, p.Budget, a.Abteilungsname
FROM Projekt p 
LEFT JOIN Abteilung a ON p.ABT_ID = a.ABT_ID;