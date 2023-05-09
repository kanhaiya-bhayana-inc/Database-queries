-- Day-2 | 24th March, 2023

-- CREATE TABLE AGENTS

create table Agents(

	AgentID int primary key identity(100,1),
	AgFirstName varchar(30),
	AgLastName varchar(30),
	AgPhone varchar(10) unique,
	AgEmail varchar(30) unique,
	AgStreet varchar(30),
	AgCity varchar(30),
	AgState varchar(30),
	AgZipCode varchar(6)

);

-- FETCH DATA
select * from Agents;


-- INSERT RECORDS OR DATA
insert into Agents(AgFirstName,AgLastName,AgPhone,AgEmail,AgStreet,AgCity,AgState,AgZipCode)
values
('Alexa1','Echo',9876543211,'ae1@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa2','Echo',9876543212,'ae2@amazon.com','6th Street','Gurgaon','Haryana',340982),
('Alexa3','Echo',9876543213,'ae3@amazon.com','7th Street','Gurgaon','Haryana',340982),
('Alexa4','Echo',9876543214,'ae4@amazon.com','8th Street','Gurgaon','Haryana',340982),
('Alexa5','Echo',9876543215,'ae5@amazon.com','9th Street','Gurgaon','Haryana',340982),
('Alexa6','Echo',9876543216,'ae6@amazon.com','10th Street','Gurgaon','Haryana',340982),
('Alexa7','Echo',9876543217,'ae7@amazon.com','2nd Street','Gurgaon','Haryana',340982),
('Alexa8','Echo',9876543218,'ae8@amazon.com','3rd Street','Gurgaon','Haryana',340982),
('Alexa9','Echo',9876443219,'ae9@amazon.com','4th Street','Gurgaon','Haryana',340982),
('Alexa10','Echo',9875543210,'ae10@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa11','Echo',9872543210,'ae11@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa12','Echo',9871543210,'ae12@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa13','Echo',9878543210,'ae13@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa14','Echo',9876553210,'ae14@amazon.com','7th Street','Gurgaon','Haryana',340982),
('Alexa15','Echo',9876543010,'ae15@amazon.com','9th Street','Gurgaon','Haryana',340982),
('Alexa16','Echo',9276543210,'ae16@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa17','Echo',9376543210,'ae17@amazon.com','8th Street','Gurgaon','Haryana',340982),
('Alexa18','Echo',9576543210,'ae18@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa19','Echo',9676543210,'ae19@amazon.com','2nd Street','Gurgaon','Haryana',340982),
('Alexa20','Echo',9776543210,'ae20@amazon.com','5th Street','Gurgaon','Haryana',340982),
('Alexa21','Echo',9176543210,'ae21@amazon.com','2nd Street','Gurgaon','Haryana',340982)


-- CREATE TABLE Customers1
create table Customers1(

	CustomerID int primary key identity(100,1),
	CustomerFirstName varchar(30),
	CustomeLastName varchar(30),
	CustomePhone varchar(10) unique,
	CustomeEmail varchar(30) unique,
	CustomeStreet varchar(30),
	CustomeCity varchar(30),
	CustomeState varchar(30),
	CustomeZipCode int
);


-- FETCH RECORDS.........
SELECT * FROM Customers1;

-- INSERT DATA....
INSERT INTO Customers1 VALUES 
('Apple','Siri',9070543211,'siri@apple.com','5th Street','Gurgaon','Haryana',340982),
('Amazon','Kindle',9876544211,'Kindle@amazon.com','A Block','Dehradun','Uttarakhand',340322),
('Ayush','Sharma',9873543211,'ayush@gmial.com','8th Street','Lucknow','UttarPradesh',340981),
('Priyanka','Mathur',7234567890,'pm@gmail.com','a block','Chandigarh','Punjab',120012),('Saurabh','Agarwal',9971328227,'agarwarmcem@gmail.com','Sector 74','Uttar Pradesh','Noida',201301),('Shraddha','Agarwal',7428653494,'agarwalshr@gmail.com','Sector 74','Uttar Pradesh','Noida',201301),('Ankur','Sharma',7428653495,'ankur@gmail.com','A7\2','Delhi','Delhi',110007),('Rahul','Gupta',7428653497,'rahur@gmail.com','A7\6','Delhi','Delhi',110007),('Raman','Sachdeva',7428653496,'raman@gmail.com','A7\9','Delhi','Delhi',110007),('Sumit','Arora',9985562525,'sumit@rediff.com','101-plo1','Karnataka','Banglore',1156563) -- Fetch records where CustomerCity is Delhi..... select * from Customers1 where CustomeCity='Delhi'; -- Fetch records where CustomerCity is Delhi and State is also DELHI.....  select * from Customers1 where CustomeCity='Delhi' AND CustomeState='Delhi'; -- FETCH RECORDS WHICH INCLUDES 'GMAIL.COM' IN THE EMAIL...... SELECT * FROM Customers1 WHERE CustomeEmail LIKE '%gmail.com'; -- Fetch records where Customers name begins with 'S' ..... SELECT * FROM Customers1 WHERE CustomerFirstName LIKE 'S%'; -- Fetch records where Customer name starts and ends with 'a' ...... SELECT * FROM Customers1 WHERE CustomerFirstName LIKE 'A%a' or CustomeLastName LIKE 'A%a'; -- Fetch records where customername includes 's' in their name ...... SELECT * FROM Customers1 WHERE CustomerFirstName LIKE '%s%'; -- Fetch Distinct records from customers ................ SELECT DISTINCT CustomerFirstName,CustomeZipCode FROM Customers1; SELECT * FROM Customers1; -- Fetch records by the count of city name or just simply club them by their city names........... SELECT CustomeCity, count(CustomeCity) as CityCount FROM Customers1 GROUP BY CustomeCity -- Practice of Group By Clouse ...... SELECT CustomeCity, COUNT(CustomeCity) AS CityCount from Customers1 Group BY CustomeCity HAVING COUNT(CustomeCity) = 1; SELECT CustomeCity, COUNT(CustomeCity) AS CityCount from Customers1 Group BY CustomeCity HAVING COUNT(CustomeCity) > 1;  SELECT CustomeCity, COUNT(CustomeCity) AS CityCount from Customers1 Group BY CustomeCity HAVING COUNT(CustomeCity) = 2; -- ORDER BY CLAUSE SELECT * FROM Customers1 ORDER BY CustomerFirstName; SELECT CustomerFirstName,CustomeCity FROM Customers1 ORDER BY CustomerFirstName DESC;