SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- New Trigger
CREATE TRIGGER trgAfterInsert ON [dbo].[UserAddress]
FOR INSERT
AS
PRINT 'Data entered successfully'
GO
