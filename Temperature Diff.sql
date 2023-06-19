DROP TABLE Climate;

CREATE TABLE Climate(ID INT PRIMARY KEY, Record_Date Date, Temperature INT);

INSERT INTO Climate(ID, Record_Date, Temperature) VALUES (1, '2015-01-01', 10), (2, '2015-01-02', 25), (3, '2015-01-03', 20), (4, '2015-01-04', 30);

SELECT * FROM Climate;

SELECT C1.ID FROM Climate C1 inner JOIN Climate AS C2 
ON C1.Record_Date = DATEADD(day,1,c2.Record_Date)
where C1.Temperature > C2.Temperature;



