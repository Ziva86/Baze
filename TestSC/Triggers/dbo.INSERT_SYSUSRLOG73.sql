SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [INSERT_SYSUSRLOG73] ON dbo.sysusrlog73
	FOR INSERT, UPDATE
	AS 
	
	declare @diasantes varchar(25)
	
		SELECT     @diasantes = convert(varchar(25), getdate() - max(EM_DIASMANTLOG),101)
		FROM         dbo.CONFIGURACION 
		GROUP BY EM_DIASMANTLOG 
	
	 
		exec sp_fillsysusrlogHist @diasantes,73
GO
