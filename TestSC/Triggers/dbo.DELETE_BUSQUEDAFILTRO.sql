SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
















































CREATE TRIGGER [DELETE_BUSQUEDAFILTRO] ON [dbo].[BUSQUEDAFILTRO] 
FOR DELETE 
AS


	if exists(select * from busquedafiltro_in where bfi_codigo in (select bfi_codigo from deleted))
	delete from busquedafiltro_in where bfi_codigo in (select bfi_codigo from deleted)




















































GO
