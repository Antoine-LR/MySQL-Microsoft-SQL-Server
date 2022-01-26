USE [irissql]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[GrandeTailleId]
		@Idespèce = 3

SELECT	'Return Value' = @return_value

GO
