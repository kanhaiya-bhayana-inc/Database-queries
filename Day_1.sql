
-- CREATE DATABASE
create database IncedoInc

-- SWITCH DATABASE
use IncedoInc

--CREATE
create table Employees(
	EmpID int primary key identity(100,1),
	EmpName varchar(50),
	EmpAge int,
	EmpAddress varchar(50),
	EmpPhone varchar(15) unique,
	EmpSalary decimal(10,2)
)

-- DISPLAY
select * from Employees

Insert into Employees(EmpName,EmpAge,EmpAddress,EmpPhone,EmpSalary) Values ('Alexa23 Echo',50,'Delhi','+91-8765679671',50000),
('Alexa22 Echo',50,'Delhi','+91-8465679873',55000),
('Alexa24 Echo',50,'Delhi','+91-8565679874',50500),
('Alexa25 Echo',50,'Delhi','+91-8065679875',30000),
('Alexa26 Echo',50,'Delhi','+91-8765679823',98000),
('Alexa27 Echo',50,'Delhi','+91-8465679877',2000),
('Alexa28 Echo',50,'Delhi','+91-8665679878',10000),
('Alexa29 Echo',50,'Delhi','+91-8762379879',42000),
('Alexa30 Echo',50,'Delhi','+91-9765979881',52000),
('Alexa31 Echo',50,'Delhi','+91-9764579841',50500)


-- CREATE TABLE
create table Customers(
	custID int primary key identity(1000,1),
	custName varchar(50),
	custAddress varchar(50),
	custPhone varchar(15) unique,
	custEmail varchar(15) unique,
	custCity varchar(30)
)


-- DISPLAY
select * from Customers


Insert into Customers(custName,custAddress,custPhone,custEmail,custCity) Values ('C2','Delhi','+91-7654678901','c2@gmail.com','Gurgaon'),
('C3','Delhi','+91-7654678904','c3@gmail.com','Gurgaon'),
('C4','Delhi','+91-7654678905','c4@gmail.com','Gurgaon'),
('C5','Delhi','+91-7654678906','c5@gmail.com','Gurgaon'),
('C6','Delhi','+91-7654678907','c6@gmail.com','Gurgaon'),
('C7','Delhi','+91-7654678908','c7@gmail.com','Gurgaon'),
('C8','Delhi','+91-7654678909','c8@gmail.com','Gurgaon'),
('C9','Delhi','+91-7654648903','c9@gmail.com','Gurgaon'),
('C10','Delhi','+91-7654578903','c10@gmail.com','Gurgaon')



-- UPDATE
Update Customers set custCity='Chandigarh' where custID in (1002,1004,1006)


-- DELETE
Delete from Customers where custID = 1007
Select * from Customers




