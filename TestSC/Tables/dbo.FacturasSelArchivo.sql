SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturasSelArchivo] (
		[FOLIO]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[FacturasSelArchivo] SET (LOCK_ESCALATION = TABLE)
GO