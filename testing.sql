-- Create Database
    Create Database RequestApprovalTest;


-- Use Database
    Use RequestApprovalTest;


-- ********************************************************* CREATION ****************************************************************

-- Create Table userDetails
    Create Table UserDetails
    (
        Id int PRIMARY Key Identity,
        LoginId int,
        FirstName varchar(30),
        LastName varchar(30),
		Email varchar(50),
        Phone varchar(15),
        Address varchar(255),
        Constraint FK_USerId_UserDetails Foreign Key(LoginId) References LoginDetails(Id) On Delete Cascade On Update Cascade
    );
    ALTER TABLE UserDetails alter COLUMN UId int NOT NULL;
    Alter Table UserDetails ADD PRIMARY KEY (UId);
    ALTER TABLE LoginDetails Alter DeletedFlag BIT DEFAULT 0;
DROP TABLE LoginDetails;
Drop TABLE UserDetails;
-- Create Table Credentials
    Create Table LoginDetails 
    (
        Id int Primary Key Identity,
        Password varchar(255),
        RoleId int NULL,
        IsActive Bit,
        DeletedFlag Bit DEFAULT 0,
		Constraint FK_UserDetails_RoleId FOREIGN KEY(RoleId)
        References Roles(RoleId) On Delete Cascade On Update Cascade
    );

-- Create table Roles
    Create Table Roles
    (
        RoleId int Primary Key identity,
        RoleName varchar(30)
    );

-- ********************************************************* INSERTION ****************************************************************

-- Insert Data into UserDetails
    Insert Into UserDetails Values 
        -- ('Aashish','Verma','9876543210','Chandigarg',2),
        (3,'Rahul','SIngh','rahul@gmail.com','9876543210','Gurgaon'),
        (4,'Amit','Sain','amit@gmail.com','9876543210','Gurgaon'),
        (5,'Shivam','Sharma','rahul@gmail.com','9876543210','Gurgaon'),
        (6,'Ankur','Sharma','rahul@gmail.com','9876543210','Gurgaon')

-- Insert Data into Credentials
    Insert into LoginDetails (Password,RoleId,IsActive) values
    -- (7,'aashish','aashish@gmail.com',0),
    ('Test@1234',2,1)

-- Insert Into Roles
    Insert Into Roles values
        ('Admin'), ('User')


-- ********************************************************* FETCH *****************************************************

-- Fetch UserDetails Data
    Select *From UserDetails;

-- Fetch Credentials Records
    Select *from Credentials;

-- Fetch Roles Records
    Select *From Roles;

-- Fethc All Tables
    Select *From UserDetails;
    Select *from LoginDetails;
    Select *From Roles;

SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='UserDetails';

UQ__UserDeta__A9D10534A2CB0733

Alter Table UserDetails DROP CONSTRAINT UQ__UserDeta__A9D10534A2CB0733;

    TRUNCATE TABLE UserDetails;

UPDATE LoginDetails Set DeletedFlag = 0 WHERE Id = 7;

DELETE FROM LoginDetails WHERE Id =42;
-- Fetch complete data of Users using INNER JOIN
    Select u.FirstName, u.LastName, u.Phone, u.Address, u.Email, r.RoleName As 'RoleType', l.IsActive from UserDetails AS u 
    INNER JOIN LoginDetails as l ON u.UId=l.Id Inner Join Roles as r on r.RoleId = l.RoleId;


-- Query to fetch complete data of user using some filter
    Select u.Id, u.FirstName, u.LastName, u.Phone, u.Address, c.Email, r.RoleName As 'RoleType', c.IsActive from UserDetails AS u 
    INNER JOIN Credentials as c ON u.Id=c.UId Inner Join Roles as r on r.RoleId = u.RoleId AND r.RoleName='User' AND c.IsActive=1;

UPDATE Credentials SET IsActive=1 WHERE UId =5;
-- ********************************************************* STORED PROCEDURE *******************************************************

-- Create Stored Procedure for creating admin credentials
    Create Procedure CreateAdminCredentials
    (
	    @firstName varchar(30), @lastName varchar(30), @phone varchar(15), @address varchar(255), @email varchar(50), 
	    @password varchar(255)
    )
    AS
    Begin
	SET NOCOUNT ON;
	Declare @ID INT, @roleId int, @isActive Bit;
	Set @roleId = 1;
    -- query
	Set @isActive = 1;
    Insert into LoginDetails (Password,RoleId,IsActive) Values (@password,@roleId,@isActive)
	SET @ID = SCOPE_IDENTITY();
    Insert into UserDetails Values (@ID,@firstName,@lastName,@email,@phone,@address);
    End

-- Exec stored procedure CreateAdminCredentials
	Exec CreateAdminCredentials 'Admin','','9876543210','Delhi','admin1@requestapproval.com','Admin@1234'




Create PROCEDURE UpdateAdminCredentials3
    (
    @adminID int, @firstName varchar(30), @lastName varchar(30), @phone varchar(15), @address varchar(255),@password varchar(255)
    )
    AS
    Begin
	SET NOCOUNT ON;
	Declare @roleId int, @isActive Bit;
	Set @roleId = 1;
    -- query
	Set @isActive = 1;
    UPDATE LoginDetails SET Password = @password, IsActive = @isActive, RoleId = @roleId WHERE Id = @adminID;
    UPDATE UserDetails SET FirstName = @firstName, LastName = @lastName, Phone = @phone, Address = @address WHERE LoginId = @adminID
    End
	Exec UpdateAdminCredentials3 2, 'Admina','','9876543211','Delhi','Admin@1234'
