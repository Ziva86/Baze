SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PROCALMMASA7] (@ERROR int OUTPUT) AS 
 declare @error1 varchar(8000)

 EXEC @error1= SP_ACTUALIZAESTATUSPEDIMPALL

 Return @Error1
GO
