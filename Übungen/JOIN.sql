

/*Deine Übung
Benutze die autoren und buecher Tabellen von oben.
Aufgabe A: Schreibe einen INNER JOIN der nur Bücher von Autoren aus 'Österreich' zeigt.
(Tipp: WHERE nach dem JOIN verwenden!)
Aufgabe B: Schreibe einen LEFT JOIN der alle Bücher zeigt — 
aber statt NULL beim Autor soll 'Kein Autor' stehen.
(Tipp: COALESCE(autoren.name, 'Kein Autor') ersetzt NULL durch einen Text!)*/




-- Ausfgabe A:
SELECT
    b.titel,
    b.jahr,
    a.name
FROM buecher b
INNER JOIN autoren a
    ON b.autor_id = a.id
WHERE a.land = 'Österreich';

-- Ausfgabe B:
SELECT
    b.titel,
    b.jahr,
    COALESCE(a.name, 'Kein Autor') AS autor_name
FROM buecher b
LEFT JOIN autoren a
    ON b.autor_id = a.id;
