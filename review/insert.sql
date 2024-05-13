INSERT INTO cars ("model", "year", "km")
VALUES ('Uno', 2017, 120000) 
RETURNING *;

INSERT INTO cars ("model", "year", "km")
VALUES ('Astra', 2008, 155000), ('Audi TT', 2012, 80000), ('Opala', 1980, 200000)
RETURNING *;