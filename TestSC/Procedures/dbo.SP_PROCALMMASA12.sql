SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PROCALMMASA12] (@ERROR int OUTPUT) AS 
 declare @error1 varchar(8000)

 EXEC @error1= SP_ACTUALIZADETALLEPEDIMPALL

 Return @Error1
GO
