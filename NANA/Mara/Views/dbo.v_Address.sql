SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- Alter View v_Address
-- New View
CREATE VIEW v_Address
AS
SELECT ID
	,City
	,PostalCode
	,UserAddressID
FROM dbo.Address1
GO
