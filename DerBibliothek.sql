-- Tabelle "buecher" erstellen
CREATE TABLE IF NOT EXISTS buecher (
    id            INTEGER,
    titel         TEXT,
    autor         TEXT,
    genre         TEXT,
    erscheinsjahr INTEGER,
    seiten        INTEGER,
    preis         REAL,
    verfuegbar    TEXT
);

-- 8 Bücher einfügen
INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (1, 'Der Alchimist',       'Paulo Coelho',   'Roman',   1988, 192, 12.99, 'ja');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (2, '1984',                'George Orwell',  'Dystopie', 1949, 328, 9.99, 'ja');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (3, 'Harry Potter 1',      'J.K. Rowling',   'Fantasy',  1997, 335, 14.99, 'nein');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (4, 'Der Kleine Prinz',    'Antoine de Saint-Exupéry', 'Roman', 1943, 96, 8.99, 'ja');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (5, 'Sherlock Holmes',     'Arthur Conan Doyle', 'Krimi', 1892, 307, 11.99, 'ja');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (6, 'Die Verwandlung',     'Franz Kafka',    'Kurzgeschichte', 1915, 96, NULL, 'ja');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (7, 'Faust',               'Johann Wolfgang von Goethe', 'Drama', 1808, 464, 7.99, 'nein');

INSERT INTO buecher (id, titel, autor, genre, erscheinsjahr, seiten, preis, verfuegbar)
VALUES (8, 'Der Prozess',         'Franz Kafka',    'Roman',   1925, 248, NULL, 'ja');