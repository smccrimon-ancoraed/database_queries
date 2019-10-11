USE [sakila]
GO
/****** Object:  StoredProcedure [dbo].[Title_in_Stock]    Script Date: 9/30/2019 6:12:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER Procedure [dbo].[Title_in_Stock]
 (  @p_title varchar(40), @p_storeid int) AS 
 
 BEGIN
	SELECT f.title AS 'Title', count(i.inventory_id) AS 'Count'
	from inventory AS i
	JOIN film AS f ON f.film_id = i.film_id
	WHERE f.title LIKE @p_title
	AND i.store_id = @p_storeid
	GROUP BY f.title
 END;