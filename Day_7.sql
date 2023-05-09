
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

CREATE TABLE Employee2(Employee_Id INT ,Name VARCHAR (50),Phone_Number int,Hire_Date date,Manager_Id int) --drop table employee2Select * from EMployee2Insert into Employee2 values(100, 'Saurabh',997132822,'2014-07-14',100)Insert into Employee2 values(101, 'Sanjay',885566999,'2014-08-16',100)Insert into Employee2 values(102, 'Manoj',885522569,'2014-08-18',103)Insert into Employee2 values(103, 'Joe',997456895,'2014-09-18',102)Insert into Employee2 values(104, 'Vineet',995566884,'2014-01-19',102)Insert into Employee2 values(105, 'Bulbuli',998885587,'2014-02-20',102)Insert into Employee2 values(106, 'Chaitali',995685855,'2014-03-22',103)Select * from EMployee2	SELECT e1.Employee_Id AS 'EmployeeID', e1.Name as 'Employee_Name', e2.Manager_Id AS 'ManagerID', e2.Name as 'Manager_Name'  FROM Employee2 as e1		INNER JOIN			Employee2 as e2		ON			e1.Manager_Id=e2.Employee_Id-- Count all employees under each manager-- Find all -- Create table emp_t2	Create table emp_t2	(		emp_id int primary key,		emp_Fname varchar(30),		emp_Lname varchar(30),		manager_id int	);-- Insert Records	Insert into emp_t2 Values	(4529,	'Nancy',	'Young',	4125),(4238,	'John',	'Simon',	4329),(4329,	'Martina',	'Candreva',	4125),(4009,	'Klaus',	'Koch',	4329),(4125,	'Mafalda',	'Ranieri',	NULL),(4500,	'Jakub',	'Hrabal',	4529),(4118,	'Moira',	'Areas',	4952),(4012,	'Jon',	'Nilssen',	4952),(4952,	'Sandra',	'Rajkovic',	4529),(4444,	'Seamus',	'Quinn',	4329)Select * from emp_t2;Select e2.emp_id as 'ManagerID', e2.emp_Fname + ' ' +e2.emp_Lname as 'Manager Name',count(e1.emp_id) as 'No_of_Employees'from emp_t2 e1JOIN emp_t2 e2on e1.manager_id=e2.emp_idgroup by e2.emp_id,e2.emp_Fname,e2.emp_LnameSelect e1.emp_id as 'SubordinateID', e1.emp_Fname + ' ' +e1.emp_Lname as 'Subordinate Name',  e2.emp_id AS 'SuperiorID', e2.emp_Fname + ' ' +e2.emp_Lname as 'Superior Name'from emp_t2 e1JOIN emp_t2 e2on e1.manager_id=e2.emp_id