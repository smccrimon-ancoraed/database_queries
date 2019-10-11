USE [sakila]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[Title_in_Stock]
		@p_title = N'A%',
		@p_storeid = 1

SELECT	'Return Value' = @return_value

GO

[dbo].[Title_in_Stock]
		@p_title = N'A%',
		@p_storeid = 1

EXEC [dbo].[Title_in_Stock]
		@p_title = N'H%',
		@p_storeid = 2


EXEC Title_in_Stock
		@p_title = 'R%',
		@p_storeid = 2

