
-- Create Table EmployeeDetails

	CREATE TABLE EmployeeDetails
	(
		EmployeeID int not null,
		PassportNumber varchar(50) NULL,
		ExpiryDate date NULL
	);

-- Insert Records
	INSERT INTO EmployeeDetails VALUES
		(1,'A5423215',null), (2,'B5423215',null), (3,'C5423215',null), (4,'D5423215',null), (5,'E5423215',null), (6,'F5423215',null),
		(7,'G5423215',null), (8,'H5423215',null), (9,'I5423215',null), (10,'J5423215',null), (11,'K5423215',null), (12,'L5423215',null), 
		(13,'M5423215',null), (14,'N5423215',null), (15,'O5423215',null), (16,'P5423215',null), (17,'Q5423215',null), (18,'R5423215',null),
		(19,'S5423215',null), (20,'T5423215',null), (21,'U5423215',null), (22,'V5423215',null), (23,'W5423215',null), (24,'X5423215',null),
		(25,'Y5423215',null), (26,'Z5423215',null), (27,'A5423211',null), (28,'A5423212',null), (29,'A5423213',null), (30,'A5423214',null),
		(31,'A5423215',null), (32,'A5423216',null), (33,'A5423217',null), (34,'A5423218',null), (35,'A5423219',null), (36,'A5423210',null),
		(37,'A5423225',null), (38,'A5423235',null), (39,'A5423245',null), (40,'A5423255',null), (41,'A5423265',null), (42,'A5423275',null),
		(43,'A5423285',null), (44,'A5423295',null)

-- Create Clustured Index
	CREATE CLUSTERED INDEX clind_1 ON EmployeeDetails(EmployeeID);

-- Fetch Records
	SELECT * FROM EmployeeDetails Where EmployeeID=8;


-- Create Table EmployeeDetails

	CREATE TABLE EmployeeDetails_t2
	(
		EmployeeID int not null,
		PassportNumber varchar(50) NULL,
		ExpiryDate date NULL
	);

-- Insert Records
	INSERT INTO EmployeeDetails_t2 VALUES
		(1,'A5423215',null), (2,'B5423215',null), (3,'C5423215',null), (4,'D5423215',null), (5,'E5423215',null), (6,'F5423215',null),
		(7,'G5423215',null), (8,'H5423215',null), (9,'I5423215',null), (10,'J5423215',null), (11,'K5423215',null), (12,'L5423215',null), 
		(13,'M5423215',null), (14,'N5423215',null), (15,'O5423215',null), (16,'P5423215',null), (17,'Q5423215',null), (18,'R5423215',null),
		(19,'S5423215',null), (20,'T5423215',null), (21,'U5423215',null), (22,'V5423215',null), (23,'W5423215',null), (24,'X5423215',null),
		(25,'Y5423215',null), (26,'Z5423215',null), (27,'A5423211',null), (28,'A5423212',null), (29,'A5423213',null), (30,'A5423214',null),
		(31,'A5423215',null), (32,'A5423216',null), (33,'A5423217',null), (34,'A5423218',null), (35,'A5423219',null), (36,'A5423210',null),
		(37,'A5423225',null), (38,'A5423235',null), (39,'A5423245',null), (40,'A5423255',null), (41,'A5423265',null), (42,'A5423275',null),
		(43,'A5423285',null), (44,'A5423295',null)

-- Fetch Records
	SELECT * FROM EmployeeDetails_t2 Where EmployeeID=8;


-- *************************************************  TASK  ************************************

CREATE TABLE Employee2