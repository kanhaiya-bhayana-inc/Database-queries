-- Create Database
    Create Database RequestApproval;


-- Use Database
    Use RequestApproval;


-- ********************************************************* CREATION ****************************************************************

-- Create Table userDetails
    Create Table UserDetails
    (
        Id int Primary Key Identity,
        FirstName varchar(30),
        LastName varchar(30),
        Phone varchar(15),
        Address varchar(255),
        RoleId int NULL,
        Constraint FK_UserDetails_RoleId FOREIGN KEY(RoleId)
        References Roles(RoleId) On Delete Cascade On Update Cascade
    );

-- Create Table Credentials
    Create Table Credentials 
    (
        UId int,
        Password varchar(255),
        Email varchar(50) Primary Key,
        IsActive Bit,
        Constraint FK_USerId_UserDetails Foreign Key(UId) References UserDetails(Id) On Delete Cascade On Update Cascade
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
        ('Atul','Sharma','9876543210','Gurgaon',2)

-- Insert Data into Credentials
    Insert into Credentials values
    -- (7,'aashish','aashish@gmail.com',0),
    (2,'atul','atul@gmail.com',1)

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
    Select *from Credentials;
    Select *From Roles;

DELETE FROM UserDetails WHERE Id = 11;
-- Fetch complete data of Users using INNER JOIN
    Select u.FirstName, u.LastName, u.Phone, u.Address, c.Email, r.RoleName As 'RoleType', c.IsActive from UserDetails AS u 
    INNER JOIN Credentials as c ON u.Id=c.UId Inner Join Roles as r on r.RoleId = u.RoleId;


-- Query to fetch complete data of user using some filter
    Select u.Id, u.FirstName, u.LastName, u.Phone, u.Address, c.Email, r.RoleName As 'RoleType', c.IsActive from UserDetails AS u 
    INNER JOIN Credentials as c ON u.Id=c.UId Inner Join Roles as r on r.RoleId = u.RoleId AND r.RoleName='User' AND c.IsActive=1;

UPDATE Credentials SET IsActive=1 WHERE UId =5;
-- ********************************************************* STORED PROCEDURE *******************************************************

-- Create Stored Procedure for creating admin credentials
    Create Procedure CreateAdminCredentials
    (
	    @firstName varchar(30), @lastName varchar(30), @phone varchar(15), @address varchar(255), @email varchar(50), 
	    @password varchar(30)
    )
    AS
    Begin
	SET NOCOUNT ON;
	Declare @ID INT, @roleId int, @isActive Bit;
	Set @roleId = 1;
    -- query
    Insert into UserDetails Values (@firstName,@lastName,@phone,@address,@roleId);
	SET @ID = SCOPE_IDENTITY();
	Set @isActive = 1;
    Insert into Credentials Values (@ID,@password,@email,@isActive)
    End

-- Exec stored procedure CreateAdminCredentials
	-- Exec CreateAdminCredentials 'David','Smith','9876543210','Delhi','david@gmail.com','david1234'




