/*Übung
Du hast die autoren und buecher Tabellen von oben.
Aufgabe: Erstelle eine dritte Tabelle namens verlage mit:

id — PRIMARY KEY
name — TEXT
stadt — TEXT

Füge 2 Verlage ein. 
Dann füge der buecher Tabelle eine neue Spalte gedanklich
 hinzu — schreib nur den CREATE TABLE Befehl 
 für buecher neu, diesmal mit einer verlag_id als 
 zweitem FOREIGN KEY.*/



 CREATE TABLE verlage (
    id INT PRIMARY KEY,
    name TEXT,
    stadt TEXT
 );


INSERT INTO verlage (name, stadt) 
VALUES 
      ('New Book New York', 'Nürnberg'),
      ('Fresh GDM', 'Bamberg');

DROP TABLE IF EXISTS buecher;

CREATE TABLE buecher (
    id       INTEGER PRIMARY KEY,
    titel    TEXT,
    jahr     INTEGER,
    autor_id INTEGER,
    verlage_id INTEGER
    FOREIGN KEY (autor_id) REFERENCES autoren(id) REFERENCES verlage(id)

);





