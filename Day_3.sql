

-- Use Database
USE IncedoInc;


-- Create Table Employee
	CREATE TABLE Employee(
		EmpId int primary key identity(100,1),
		EmpName varchar(30),
		DeptId int
	);

-- Fetch Data
	SELECT * FROM Employee;

-- Insert Data
	INSERT INTO Employee VALUES
		('Jagrit',1), ('Komal',1), ('Kanhaiya',2), ('Nikhil',4), ('Arvind',7),
		('Saurabh',5), ('Gaurav',3), ('Sharadha',3), ('Nishka',5), ('Sulabh',''),
		('Roma',''), ('Radhika',5), ('Tishika',2), ('Pooja',1), ('Reema',3),
		('Sia',4), ('Nisha',6), ('Vishal',5), ('Jaina',3), ('Ishant','')

-- Update Record
	UPDATE Employee SET DeptId=7 WHERE EmpId=104;

-- Create Table Deprt;
	CREATE TABLE Dept(
		DeptId int primary key identity(1,1),
		DeptName varchar(30)
	);

-- Fetch Data
	SELECT * FROM Dept;

-- Insert Data 
	INSERT INTO Dept VALUES
	('IT'), ('Sales'), ('Finance'),
	('Payrol'), ('HR'), ('Recuirtment')


-- Fetch Both Table Records
	SELECT * FROM Employee;
	SELECT * FROM Dept;

-- Apply Join

-- Inner Join
	SELECT e.EmpId, e.EmpName, d.DeptId, d.DeptName 
		FROM 
			Employee as e INNER JOIN Dept as d on e.DeptId=d.DeptId 

-- Left Join
	SELECT e.EmpId, e.EmpName, d.DeptId, d.DeptName 
		FROM 
			Employee as e LEFT JOIN Dept as d on e.DeptId=d.DeptId 

-- Right Join
	SELECT e.EmpId, e.EmpName, d.DeptId, d.DeptName 
		FROM 
			Employee as e RIGHT JOIN Dept as d on e.DeptId=d.DeptId 


-- Create Table TestEmp
	CREATE TABLE TestEmp(
		EmpId int primary key,
		EmpName varchar(30)
	);

-- Fetch Records
	SELECT * FROM TestEmp;

-- Insert Records
	INSERT INTO TestEmp VALUES
		(1,'Saurabh'), (2,'Sanjay'), (3,'Joe'), (4,'Stefanie'), (5,'Vinod'), (9,'Vineet');

-- Create Table TestEmpSal
	CREATE TABLE TestEmpSal(
		EmpId int primary key,
		EmpSal decimal(10,2)
	);

--Fetch Data
	SELECT * FROM TestEmpSal;

-- Inset Records into TestEmpSal
	INSERT INTO TestEmpSal VALUES
		(1,10000), (2,20000), (4,30000), (7,25000), (8,35000), (9,40000);

-- Apply Joins

-- Inner Join
	SELECT e.EmpId,e.EmpName,s.EmpSal 
		from 
			TestEmp as e INNER JOIN TestEmpSal as s on e.EmpId=s.EmpId;

-- Left Join
	SELECT e.EmpId,e.EmpName,s.EmpSal 
		from 
			TestEmp as e LEFT JOIN TestEmpSal as s on e.EmpId=s.EmpId;

-- Right Join
	SELECT e.EmpId,e.EmpName,s.EmpSal 
		from 
			TestEmp as e RIGHT JOIN TestEmpSal as s on e.EmpId=s.EmpId;

-- Outer Join
	SELECT e.EmpId,e.EmpName,s.EmpSal 
		from 
			TestEmp as e FULL OUTER JOIN TestEmpSal as s on e.EmpId=s.EmpId;

-- Fetch Both Table Records
		SELECT * FROM TestEmp;
		SELECT * FROM TestEmpSal;

-- Create Table Books
	CREATE TABLE Books(

-- Insert Records into Categories
	INSERT INTO Categories VALUES 