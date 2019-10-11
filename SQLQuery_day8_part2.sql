-- Create sample stored procedure to find matching Title names with a given Store ID number
-- Valid Store ID numbers are: 1 or 2
-- Valid options for Title:  Using a wildcard such as '%' - match all
-- Title:  'D%' match all titles that begin with the letter 'D'
-- Title: '%r% match all titles that contain the letter 'R'
-- The CREATE the Store Procedure highlight the Create Procedure , down to the ending of 'END;', and execute
 Create Procedure Title_in_Stock
 (  @p_title varchar(40), @p_storeid int) AS 
 
 BEGIN
	SELECT f.title AS 'Title', count(inventory_id) AS 'Count'
	from inventory AS i
	JOIN film AS f ON f.film_id = i.film_id
	WHERE f.title LIKE @p_title
	AND i.store_id = @p_storeid
	GROUP BY f.title
 END;









