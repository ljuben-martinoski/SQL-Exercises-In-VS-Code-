/*Aufgabe: Lösche alle Schüler, die unter 20 Jahre alt sind.
Dann zeige mit SELECT * wer noch übrig ist.*/

DELETE FROM schueler WHERE age < 20;


SELECT * FROM schueler;

