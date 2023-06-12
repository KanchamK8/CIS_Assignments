
--Create Table TableA (ID int);
--Create Table TableB (ID int);
--INSERT INTO TableA (ID) VALUES (1), (2), (NULL), (3), (2), (4), (4), (6), (10);
--INSERT INTO TableB (ID) VALUES (7), (NULL), (NULL), (3), (4), (4), (2), (2), (8);
--SELECT * FROM TableA;
--SELECT * FROM TableB;

SELECT TableA.ID, TableB.ID  
FROM TableA 
INNER JOIN TableB ON TableA.ID = TableB.ID;

SELECT TableA.ID, TableB.ID  
FROM TableA 
LEFT JOIN TableB ON TableA.ID = TableB.ID;

SELECT TableA.ID, TableB.ID  
FROM TableA 
RIGHT JOIN TableB ON TableA.ID = TableB.ID;

SELECT TableA.ID, TableB.ID  
FROM TableA 
FULL OUTER JOIN TableB ON TableA.ID = TableB.ID;

SELECT TableA.ID, TableB.ID  
FROM TableA 
LEFT JOIN TableB ON TableA.ID = TableB.ID
WHERE TableB.ID Is NULL;