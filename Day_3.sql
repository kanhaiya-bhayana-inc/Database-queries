

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
	CREATE TABLE Books(		Id INT PRIMARY KEY IDENTITY(1,1),		Name VARCHAR (50) NOT NULL,		Price INT,		CategoryId INT, 		AuthorId INT	);-- Create Table Categories	CREATE TABLE Categories(		Id INT PRIMARY KEY,		Name VARCHAR (50) NOT NULL,	);-- Create Table Authors	CREATE TABLE Authors(		Id INT PRIMARY KEY,		Name VARCHAR (50) NOT NULL,	);

-- Insert Records into Categories
	INSERT INTO Categories VALUES 		(1, 'Cat-A'), (2, 'Cat-B'), (3, 'Cat-C'), (7, 'Cat-D'), (8, 'Cat-E'),		(4, 'Cat-F'), (10,'Cat-G'), (12,'Cat-H'), (6, 'Cat-I')-- Insert Records into Authors	INSERT INTO Authors VALUES 		(1, 'Author-A'), (2, 'Author-B'), (3, 'Author-C'), (10, 'Author-D'), (12, 'Author-E')-- Insert Records into Books	INSERT INTO Books VALUES 		('Book-A', 100, 1, 2), ('Book-B', 200, 2, 2), ('Book-C', 150, 3, 2),		('Book-D', 100, 3,1), ('Book-E', 200, 3,1), ('Book-F', 150, 4,1),		('Book-G', 100, 5,5), ('Book-H', 200, 5,6), ('Book-I', 150, 7,8)-- Fetch Data from Tables	SELECT * FROM Books;	SELECT * FROM Categories;	SELECT * FROM Authors;-- Apply Joins	-- Inner Join	SELECT b.Name, b.Price, c.Name, a.Name 		FROM 			Books as b INNER JOIN Categories as c on b.CategoryId=c.Id 				   INNER JOIN Authors as a on b.AuthorId= a.Id;-- Left Join	SELECT b.Name, b.Price, c.Name, a.Name 		FROM 			Books as b LEFT JOIN Categories as c on b.CategoryId=c.Id 				   LEFT JOIN Authors as a on b.AuthorId= a.Id;-- RIGHT Join	SELECT b.Name, b.Price, c.Name, a.Name 		FROM 			Books as b RIGHT JOIN Categories as c on b.CategoryId=c.Id 				   RIGHT JOIN Authors as a on b.AuthorId= a.Id;-- Full Outer Join	SELECT b.Name, b.Price, c.Name, a.Name 		FROM 			Books as b FULL OUTER JOIN Categories as c on b.CategoryId=c.Id 				   FULL OUTER JOIN Authors as a on b.AuthorId= a.Id;