 -- CHECK Contraint


 Create Database dbpractice;

 use dbpractice;

 Create table employee
 (
	Id int IDENTITY(101,1),
	Name varchar(30),
	email varchar(50) UNIQUE,
	Age int CHECK (Age>=18)
);

 Create table employee1
 (
	Id int IDENTITY(101,1),
	Name varchar(30),
	email varchar(50) UNIQUE,
	Age int,
	CONSTRAINT Chk_Age CHECK (Age>=18)
);


SELECT * FROM employee1 where Id between 110 AND 111 ;

Insert into employee3 Values
	('Abhay Raj'),
	('Raghav Garg'),
	('Amar'),
	('Dev'),
	('nikhiil')

-- Drop Constraint
Alter table employee1 DROP COnstraint UQ__employee__AB6E6164B44E85A8;

-- See the list of constrainsts applied on table and their name.
SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='employee1';



Create view emp_view as Select *from employee1;

Select *from emp_view;

show tables;

Create table employee3
 (
	EmpId int IDENTITY(1,1),
	Name varchar(30),
);

Create table employee3_dept
 (
	DeptId int,
	DeptName varchar(30),
	EmpId int
);

Alter table employee2_dept rename column Id to DeptID;

EXEC sp_rename 'employee2.EmpID', 'EmpId', 'COLUMN';

insert into employee3_dept values
(101,'HR', 1),
(102,'L&D',3),
(1033,'CSE',1),
(104,'Wealth Management',4)

COMMIT;
select *from employee3;
select *from employee3_dept;

begin tran tran1
update employee3_dept set DeptName ='FinanceUttt'  where DeptId = 1033
commit tran tran1;

rollback tran tran1;

select EmpId,Name,DeptName from employee2 e Join employee2_dept e1 ON e.EmpId = e1.EmpId;

select e.EmpId, Name, DeptName from employee3 e JOIN employee3_dept e3 ON e.EmpId = e3.EmpId;
