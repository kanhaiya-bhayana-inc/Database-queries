
-- Create Table Student

	CREATE TABLE STUDENT 
	(
		StuID int primary key identity(100,1),
		StuName varchar(30),
		StuMarks1 int,
		StuMarks2 int,
		StuMarks3 int,
		StuMarks4 int,
		StuMarks5 int,
		StuEmail varchar(30),
		StuAddress varchar(50)
	);

-- Store Procedure for Insert Records
	CREATE PROCEDURE InsertDataStu
	(
		@name varchar(30), @m1 int, @m2 int, @m3 int, @m4 int, @m5 int, @email varchar(30), @add varchar(50)
	)
	AS
	BEGIN 
		-- Query
			INSERT INTO STUDENT VALUES (@name, @m1, @m2, @m3, @m4 ,@m5, @email, @add);
	END

-- Call InsertDataStu
	EXEC InsertDataStu 'Harman',90,80,82,87,56,'harman@gmail.com','South Delhi'

-- Store Procedure for Fetch Records
	CREATE PROCEDURE FetchRecords
	AS
	BEGIN
		-- Query
			SELECT * FROM STUDENT;
	END

-- Call FetchRecords
	EXEC FetchRecords

-- Create Precedure for DeleteRecordsStu
	CREATE PROCEDURE DeleteRecordsStu
	(
		@id int
	)
	AS
	BEGIN
		-- Query	
			DELETE FROM STUDENT WHERE StuID=@id;
	END

-- Create Procedure for UpdateRecordsStu
	CREATE PROCEDURE UpdateRecordStu
	(
		@name varchar(30), @m1 int, @m2 int, @m3 int, @m4 int, @m5 int, @email varchar(30), @add varchar(50), @id int
	)
	AS
	BEGIN 
		-- Query
			UPDATE STUDENT SET StuName=@name, StuMarks1=@m1,StuMarks2=@m2, StuMarks3=@m3,StuMarks4=@m4 , StuMarks5=@m5, StuEmail=@email, StuAddress=@add WHERE StuID=@id;
	END


-- main
	EXEC InsertDataStu 'Harman',90,80,82,87,56,'harman@gmail.com','South Delhi'
	EXEC FetchRecords
	EXEC UpdateRecordStu 'Harman',90,80,82,87,56,'harman@gmail.com','South Delhi',103
	EXEC DeleteRecordsStu 102


-- ************************************  TRIGGERS IN SQL  ***************************************************

-- Create Table student_t2
	CREATE TABLE student_t2
	(
		stu_id int,
		stu_name varchar(30),
		branch varchar(30)
	);

-- Insert Records 
	INSERT INTO student_t2 VALUES
		(1901401,'Deva','C.S'),
		(1901402,'Harsh','C.S'),
		(1901403,'Abhishek','C.S'),
		(1901404,'Garvit','C.S'),
		(1901405,'Sampath','C.S')

-- Fetch recrods
	SELECT * FROM student_t2;

-- Update Record
	UPDATE student_t2 SET branch='M.E' WHERE stu_id=1901404;

-- Delete Record Query
	DELETE FROM student_t2 Where stu_id = 1901405;	

-- Create Trigger for Fetch after Insertion
	CREATE TRIGGER T1 ON student_t2
	AFTER INSERT
	AS
	BEGIN
		-- Query
			SELECT * FROM INSERTED
	END

-- Create Trigger for Fetch after Deletion
	CREATE TRIGGER T2 ON student_t2
	AFTER DELETE
	AS
	BEGIN
		-- Query
			SELECT * FROM DELETED
	END

-- Create Trigger for Fetch after Updation
	CREATE TRIGGER T3 ON student_t2
	AFTER UPDATE
	AS
	BEGIN
		-- Query
			SELECT * FROM DELETED;
			SELECT * FROM INSERTED;
	END


-- *********************************** 2nd Example OF Triggers **********************************************

-- CREATE TABLE employees_t2
	CREATE TABLE employees_t2
	(
		Id int primary key,
		Name varchar(30),
		Salary int,
		Gender varchar(12),
		DeptID int
	);

-- Insert Records into employees_t2
	INSERT INTO employees_t2 VALUES 
		(1,'Saurabh',82000,'Male',2),
		(2,'Sanjay',52000,'Male',2),
		(3,'Joe',25000,'Male',1),
		(4,'Vinod',47000,'Male',2),
		(5,'Pooja',46000,'Female',3)

-- Fetch Records
	SELECT * FROM employees_t2;

-- Update Record
	UPDATE employees_t2 SET DeptID=4 WHERE Id=5;

-- Delete Record
	DELETE FROM employees_t2 WHERE Id = 8;



-- Create Table Employees_t2_Audit_Test
	CREATE TABLE Employees_t2_Audit_Test
	(	
		aud_Id int IDENTITY,
		Audit_Action text
	);

-- Create Table Employees_t2_Audit_Test
	CREATE TABLE Employees_t2_Audit_Test1
	(	
		aud_Id int IDENTITY,
		Audit_Action varchar(200)
	);
-- Fetch Audit Action Details
	SELECT * FROM Employees_t2_Audit_Test;

-- Create Trigger 
	CREATE TRIGGER tr_InsertEmployees_t2
	ON employees_t2
	FOR INSERT
	AS 
	BEGIN
		DECLARE @Id int
		SELECT @Id = Id FROM INSERTED
		INSERT INTO Employees_t2_Audit_Test VALUES
			('New Employee with ID ' + CAST(@Id AS varchar(10)) + ' is added at: ' + CAST(Getdate() AS Varchar(22)));
		SELECT * FROM INSERTED;
	END

-- Create Trigger 
	CREATE TRIGGER tr_InsertEmployees_t2n
	ON employees_t2
	FOR INSERT
	AS 
	BEGIN
		DECLARE @Id int
		SELECT @Id = Id FROM INSERTED
		INSERT INTO Employees_t2_Audit_Test1 VALUES
			('New Employee with ID ' + CAST(@Id AS varchar(10)) + ' is added at: ' + CAST(Getdate() AS Varchar(22)));
			SELECT * FROM INSERTED;
	END
CREATE TRIGGER tr_fetch1 
	ON Employees_t2_Audit_Test
	AFTER INSERT
	AS 
	BEGIN
		--SELECT * FROM DELETED;
		SELECT * FROM INSERTED;
	END

	DROP TRIGGER tr_fetch1 ON ALL SERVER;
DROP TRIGGER Employees_t2_Audit_Test.tr_fetch1;
	ALTER TABLE Employees_t2_Audit_Test
		ALTER COLUMN Audit_Action varchar(200);

	TRUNCATE TABLE Employees_t2_Audit_Test

INSERT INTO employees_t2 VALUES 
		(10,'Shivani',85000,'Female',2)

	