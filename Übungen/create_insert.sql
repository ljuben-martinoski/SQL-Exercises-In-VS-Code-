DROP TABLE IF EXISTS autos;

CREATE TABLE IF NOT EXISTS autos (
    id INT ,
    marke TEXT ,
    modell TEXT ,
    baujahr INT ,
    preis REAL ,
    PRIMARY KEY (id)
);

INSERT INTO autos (id, marke, modell, baujahr, preis) 
VALUES 
    (1, 'VW', 'Golf', 2019, 18500.00),
    (2, 'BMW', '3er', 2021, 35900.00 ),
    (3, 'Mercedes', 'A-Klasse', 2020, 29999.99),
    (4, 'Toyota', 'Yaris', 2022, 21300.00);
    

        