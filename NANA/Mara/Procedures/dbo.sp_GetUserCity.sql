SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Alter Procedure sp_GetUserCity

CREATE PROCEDURE sp_GetUserCity
AS
BEGIN
	SELECT UserAddress.FirstName
		,UserAddress.Lastname
		,Address1.City
	FROM UserAddress
	INNER JOIN dbo.Address1 ON UserAddress.AddresID = Address1.UserAddressID
END
GO
