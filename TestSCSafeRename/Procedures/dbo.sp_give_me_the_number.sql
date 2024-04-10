SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_give_me_the_number] 

AS 
DECLARE @UserID int

set @UserID=8;

BEGIN
SELECT * FROM dbo.Phone_Book pb WHERE @UserID = pb.UserID
END;
GO
