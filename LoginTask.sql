Create Database DbUserSignUpLogin
Go
Use DbUserSignUpLogin
Go

Create Table TblUserInfo
(
	UserID Int Identity Primary Key,
	UserName Varchar(30),
	UserPassword Varchar(30)
)


Create Table TblUserInfoup
(
	UserID Int Identity Primary Key,
	UserName Varchar(30),
	UserPassword Varchar(255)
)


Create Table TblUser
(
	UserID Int Identity Primary Key,
	UserName Varchar(30),
	UserEmail varchar(30),
	UserPhone varchar(30),
	UserAddress varchar(100),
	UserPassword Varchar(255)
)

select *from TblUser;