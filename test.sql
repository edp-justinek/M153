CREATE INDEX index_name
ON table_name (column1, column2, ...);

CREATE INDEX idx_lastname
ON Persons (LastName);

CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

DROP INDEX table_name.index_name;




CREATE INDEX idx_bike
ON Bike (Bez);


DROP INDEX Bike.idx_bike;