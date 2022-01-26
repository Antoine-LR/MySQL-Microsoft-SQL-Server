USE [irissql]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[GrandeTaille]

SELECT	'Return Value' = @return_value

GO
