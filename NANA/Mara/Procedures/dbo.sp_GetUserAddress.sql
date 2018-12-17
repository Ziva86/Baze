SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- New procedure
CREATE PROCEDURE sp_GetUserAddress
AS
BEGIN
	SELECT FirstName
		,Lastname
		,Address
	FROM UserAddress
END
GO
