SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
















































CREATE TRIGGER [DELETE_ALMACENDESPCAR] ON [dbo].[ALMACENDESPCAR] 
FOR DELETE 
AS
SET NOCOUNT ON 

	if exists (select * from almacendesp where am_codigo in (select am_codigo from deleted))
	delete from almacendesp where am_codigo in (select am_codigo from deleted)
































































GO
