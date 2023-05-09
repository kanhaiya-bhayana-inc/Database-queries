Create Database dbStudent;

use dbStudent;

Create Table Student
(
	Id int Primary Key Identity,
	Name varchar(30),
	Email varchar(50),
	Phone varchar(15),
);

ALter table Student Add Address varchar(50);

SELECT * From Student;