---Datenbank erstellen und Tabelle---

USE master
GO
CREATE DATABASE IndizesTEST
GO
USE IndizesTEST
GO
CREATE TABLE Personen(
  persoId INT IDENTITY PRIMARY KEY,
  vorname varchar(50)
)


---Datensätze hinzufügen---
DECLARE @cnt INT = 0;
WHILE @cnt < 500
BEGIN
  DECLARE @vorn varchar(20);
  SET @vorn = 'Justine';
  INSERT INTO Personen (vorname)
  VALUES(@vorn + ' ' + CONVERT(varchar(20),@cnt))
  SELECT CONVERT(INT,@cnt)
  SET @cnt = @cnt + 1;
END
GO

DECLARE @cnt INT = 500;
WHILE @cnt < 1000
BEGIN
  DECLARE @vorn varchar(20);
  SET @vorn = 'Helena';
  INSERT INTO Personen (vorname)
  VALUES(@vorn + ' ' + CONVERT(varchar(20),@cnt))
  SELECT CONVERT(INT,@cnt)
  SET @cnt = @cnt + 1;
END
GO

DECLARE @cnt INT = 1000;
WHILE @cnt < 1500
BEGIN
  DECLARE @vorn varchar(20);
  SET @vorn = 'Erika';
  INSERT INTO Personen (vorname)
  VALUES(@vorn + ' ' + CONVERT(varchar(20),@cnt))
  SELECT CONVERT(INT,@cnt)
  SET @cnt = @cnt + 1;
END
GO

---Select durchführen ohne Indizes----
----Nach dem Index erstellen erneut Select durchführen---
SELECT * FROM Personen
WHERE vorname LIKE 'e%';

---Index erstellen----
CREATE INDEX idx_vorname
ON Personen (vorname);