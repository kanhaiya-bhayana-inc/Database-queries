Create Database RequestApproval;

Use RequestApproval;



Create Table Roles
(
	RoleId int Primary Key identity,
	RoleName varchar(30)
);

Select * From Roles;
Insert Into Roles values
('Admin'), ('User')


Create Table UserDetails (
	Id int Primary Key Identity,
	FirstName varchar(30),
	LastName varchar(30),
	Phone varchar(15),
	Address varchar(255),
	RoleId int NULL,
	Constraint FK_UserDetails_RoleId FOREIGN KEY(RoleId)
	References Roles(RoleId) On Delete Cascade On Update Cascade
);

Select *From UserDetails;
Insert Into UserDetails Values 
	--('Atul','Sharma','9876543210','Delhi',2)
	('Aashish','Verma','9876543210','Chandigarg',2),
	('Vijay','Singh','9876543210','Gurgaon',2)

Delete From UserDetails Where Id=4;

Create Table Credentials 
(
	UId int,
	Password varchar(255),
	Email varchar(50) Primary Key,
	IsActive Bit,
	Constraint FK_USerId_UserDetails Foreign Key(UId) References UserDetails(Id) On Delete Cascade On Update Cascade
);

Select *from Credentials;
Insert into Credentials values
(7,'aashish','aashish@gmail.com',0),
(8,'vijay','vijay@gmail.com',0)
-- (2,'atulsharma','atul@gmail.com',0)

Select *From UserDetails;
Select *from Credentials;
Select *From Roles;

Exec CreateAdminCredentials4 'David','D','9876543210','Delhi','da@gmail.com','david1234',1,1,1


 -- Query to fetch data complete data of user.....
Select u.Id, u.FirstName, u.LastName, u.Phone, u.Address, c.Email, r.RoleName As 'RoleType', c.IsActive from UserDetails AS u 
INNER JOIN Credentials as c ON u.Id=c.UId Inner Join Roles as r on r.RoleId = u.RoleId;

 Update Credentials SET IsActive=1 Where UId=3;

	Create Procedure CreateAdminCredentials
    (
	    @firstName varchar(30), @lastName varchar(30), @phone varchar(15), @address varchar(255), @email varchar(50), 
	    @password varchar(30), @isActive Bit, @roleId int, @uid

    )
    As
    Begin
    -- query
    Insert into UserDetails Values (@firstName,@lastName,@phone,@address,@roleId)
    Insert into Credentials Values (@uid,@password,@email,@isActive)
    End

	Create Procedure CreateAdminCredentials
    (
	    @firstName varchar(30), @lastName varchar(30), @phone varchar(15), @address varchar(255), @email varchar(50), 
	    @password varchar(30), @isActive Bit, @roleId int, @uid int
    )
    AS
    Begin
	SET NOCOUNT ON;
	Declare @ID INT;
    -- query
    Insert into UserDetails Values (@firstName,@lastName,@phone,@address,@roleId);
	SET @ID = SCOPE_IDENTITY();
    Insert into Credentials Values (@ID,@password,@email,@isActive)
    End
    Exec CreateAdminCredentials 'Rahul', 'Verma', '9876543210', 'Gurgaon',1, 'rahulverma','rahul@gmail.com', 'true'



	Create Procedure CreateAdminCredentials5
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
	    Exec CreateAdminCredentials4 'Rahul', 'Verma', '9876543210', 'Gurgaon','1','1', 'rahulverma','rahul@gmail.com'


		Exec CreateAdminCredentials5 'David','Smith','9876543210','Delhi','david@gmail.com','david1234'

	Drop Procedure dbo.CreateAdminCredentials5;