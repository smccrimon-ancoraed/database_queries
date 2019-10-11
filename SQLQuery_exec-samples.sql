USE [sakila]
GO


-- Highlight the line and Execute, make up some of your own
-- In a computer program, you will built a string from a completed form (user input)
-- and build a SQL statement to store into a variable, then use that variable to supply the query
-- to be executed by the back-end database

EXEC Title_in_Stock @p_title='D%', @p_storeid=2;

EXEC Title_in_Stock @p_title='D%', @p_storeid=1;

EXEC Title_in_Stock @p_title='E%', @p_storeid=2;

EXEC Title_in_Stock @p_title='%V%', @p_storeid=2;

