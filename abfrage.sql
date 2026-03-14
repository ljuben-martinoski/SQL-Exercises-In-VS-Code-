

CREATE TABLE IF NOT EXISTS personen (
    id INT NOT NULL,
    name  TEXT NOT NULL,
    alter_j INT NOT NULL,
    groesse REAL,
    stadt TEXT,
    PRIMARY KEY (id)
);

INSERT INTO personen (id, name, alter_j, groesse, stadt) 
VALUES 
    (1, "Anna Müller", 28, 1.72, "Berlin"),
    (2, "Ben Schmidt",   35, 1.80, "München"),  
    (3, "Clara Weber",   22, 1.65, "Hamburg"), 
    (4, "David Klein",   41, 1.75, "Berlin"),  
    (5, "Eva Hoffmann",  30, 1.68, "Köln");


    