use etgtraining

declare @name varchar(50)
declare @dept varchar(10)
set @name ='Simran Jain'
set @dept = 'Training'
print @name+ ' ' +@dept

CREATE TABLE CSource
(
ID INT,
QTR INT,
YEAR INT,
SALES INT
)

CREATE TABLE CDesc 
(
ID INT,
QTR VARCHAR(10),
YEAR INT,
SALES INT
)

INSERT INTO CSource
VALUES(101,1,2013,2000)
     ,(101,2,2013,2100)
	 ,(101,3,2013,2100)

INSERT INTO CDesc
(ID,
QTR,
YEAR,
SALES)

SELECT ID,
	CASE
		WHEN QTR=1
			THEN 'QTR1'
		WHEN QTR=2
			THEN 'QTR2'
		WHEN QTR=3
			THEN 'QTR3'
	
	END AS QTR,
	YEAR,
	SALES
FROM CSource


SELECT * FROM CDesc

CASE WHEN CONDITION
	THEN Value1
	WHEN CONDITION2
	THEN Value2
	ELSE Value
END

--IF STATEMENT

TRUNCATE TABLE CDesc
IF (SELECT DISTINCT YEAR FROM CSource)=2013
BEGIN
	INSERT INTO CDesc
	(ID,QTR,YEAR,SALES)
	SELECT ID,
		CASE
			WHEN QTR=1
				THEN 'QTR1'
			WHEN QTR=2
				THEN 'QTR2'
			WHEN QTR=3
				THEN 'QTR3'
		END AS QTR,
		YEAR,
		SALES
	FROM CSource
END

ELSE
BEGIN
	PRINT 'YEAR NOT MATCHING'
END

SELECT * FROM CDesc

SELECT 1 AS num
UNION ALL
SELECT 2
UNION ALL
SELECT 3

--WHILE LOOP


DECLARE @WHILE INT
SET @WHILE=0
WHILE @WHILE<=100
BEGIN
SET @WHILE=@WHILE+1
PRINT @WHILE
END


