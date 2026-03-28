/*
 Indizes
📖 Was es ist
Ein Index ist wie ein Inhaltsverzeichnis in einem Buch — statt jede Seite durchzublättern,
springst du direkt zur richtigen Stelle.
Ohne Index durchsucht SQLite jede einzelne Zeile —
bei großen Tabellen wird das sehr langsam.
Mit Index findet SQLite die gesuchten Zeilen blitzschnell — 
ohne alle Zeilen zu prüfen.
*/


-- Ohne Index — SQLite prüft JEDE Zeile (langsam bei großen Tabellen)
SELECT * FROM produkte WHERE kategorie = 'Obst';

-- Mit Index — SQLite springt direkt zur richtigen Stelle (schnell!)
CREATE INDEX idx_kategorie ON produkte(kategorie);
-- idx_kategorie = Name des Index (frei wählbar, aber immer mit idx_ beginnen)
-- produkte      = Tabellenname
-- (kategorie)   = Spalte die wir oft durchsuchen

-- Index auf einer anderen Spalte erstellen
CREATE INDEX idx_preis ON produkte(preis);

-- Index auf mehreren Spalten gleichzeitig (zusammengesetzter Index)
CREATE INDEX idx_kat_preis ON produkte(kategorie, preis);

-- Index löschen wenn er nicht mehr gebraucht wird
DROP INDEX idx_preis;

/*
## 🔍 Wie ein Index funktioniert — Visualisierung
```
OHNE Index — SQLite prüft jede Zeile:
+----+---------+--------------+
|  1 | Apfel   | Obst         | ← prüfen
|  2 | Banane  | Obst         | ← prüfen
|  3 | Karotte | Gemüse       | ← prüfen
|  4 | Tomate  | Gemüse       | ← prüfen
|  5 | Milch   | Milchprodukt | ← prüfen
|  6 | Käse    | Milchprodukt | ← prüfen
|  7 | Brot    | Backware     | ← prüfen
+----+---------+--------------+
→ 7 Prüfungen für 2 Treffer

MIT Index — SQLite springt direkt:
Index idx_kategorie:
  Backware     → Zeile 7
  Gemüse       → Zeilen 3, 4
  Milchprodukt → Zeilen 5, 6
  Obst         → Zeilen 1, 2  ← direkt hier springen!
→ 1 Nachschlag für 2 Treffer
*/

/*
 Wann Index benutzen — wann nicht?
Situation                                    Index?                 Warum
Spalte wird oft in WHERE benutzt            ✅ Ja           Schnellere Suche
Spalte wird oft in JOIN benutzt             ✅ Ja           Schnelleres Verknüpfen
Spalte wird oft in ORDER BY benutzt         ✅ Ja           Schnelleres Sortieren
Kleine Tabelle (unter 1000 Zeilen)          ❌ Nein         Kein spürbarer Unterschied
Spalte wird selten gesucht                  ❌ Nein         Unnötiger Speicherverbrauch
Spalte wird oft geändert (UPDATE)           ❌ Nein       Index muss ständig neu gebaut werden
*/

-- ⚠️ Wichtig — PRIMARY KEY hat automatisch einen Index!
-- Das musst du NICHT extra machen:
CREATE INDEX idx_id ON produkte(id);

-- PRIMARY KEY bekommt automatisch einen Index von SQL!
-- Deshalb ist die Suche nach id immer schnell:
SELECT * FROM produkte WHERE id = 5; -- blitzschnell, kein extra Index nötig

-- 🔍 UNIQUE Index — nur eindeutige Werte erlaubt
-- Ein UNIQUE Index verhindert doppelte Werte in einer Spalte
CREATE UNIQUE INDEX idx_name ON produkte(name);

-- Jetzt kann kein zweites Produkt denselben Namen haben:
INSERT INTO produkte (name, preis) VALUES ('Apfel', 0.99);
-- ❌ Fehler: UNIQUE constraint failed: produkte.name


/*
-- Alle Indizes einer Tabelle anzeigen
PRAGMA index_list('produkte');
```
```
+------+--------------+--------+
| seq  | name         | unique |
+------+--------------+--------+
|    0 | idx_kategorie|      0 |
|    1 | idx_preis    |      0 |
+------+--------------+--------+
*/