USE [sakila]
GO


-- Sample Create View using the Address Table
-- The VIEW can be any valid query regardless of the Complexity
-- Syntax:  CREATE VIEW <view-name> AS <sql-query>
--
CREATE VIEW by_address AS SELECT [address_id]
      ,[address]
      ,[city_id]
      ,[postal_code]
      ,[phone]

  FROM [dbo].[address]
GO

--
-- Using the view we created, you can query using the View
-- The view can be aggregated with a WHERE clause or SELECT with named columns (field names)

select * from by_address 


Use sakila

-- 
-- The DROP statement is used to remove a database object
-- The is used to DROP a defined Procedure, Table, INDEX, CONSTRAINT, or Database
-- 
DROP Procedure Title_in_Stock

--
-- We query a few items from both databases to find some of their relations on film_id
-- This helps us find some data the will return some data 
-- There are several examples to execute and late note of the results

select * from inventory where film_id between 257 and 266
-- From the inventory table, we have these counts with the matching film_id column
-- film_id = 257(3), 258(4), 259(2), 260 (4), 261 (2), 262(2), 263(7), 264(2), 265(4), 266(8)

-- Report all titles that begin with the letter E, notice the case is insensative, also try using 'e%'
select * from film where title LIKE 'E%'
select * from film where title LIKE 'd%'
select * from inventory where film_id between 257 and 299

-- film_id = range (257-266) and Titles like'D%'
-- inventory









