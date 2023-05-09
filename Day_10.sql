USE Incedo2;

-- Temporary table 
	-- 2 Types
		-- 1. Local
		-- 2. Global
	-- Use #<table_name> for creating a table
	-- Store in System Databases > Temporary_Tables
	-- Automatically deleted as soon as the last connection is terminated.
		
	-- Local
		CREATE TABLE #EmpDetails (Id int, EmpName varchar(30));
		INSERT INTO #EmpDetails VALUES (1,'Rohan Sharma');
		SELECT * FROM #EmpDetails;

	-- -- Global
		CREATE TABLE ##EmpDetails (Id int, EmpName varchar(30));
		INSERT INTO ##EmpDetails VALUES (1,'Rohan Sharma');
		SELECT * FROM ##EmpDetails;