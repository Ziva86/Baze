SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PERMISOPORCENTAJE] (
		[PE_CODIGO]      [int] NOT NULL,
		[PORCAPITAL]     [decimal](38, 6) NOT NULL,
		[PA_CODIGO]      [int] NOT NULL,
		CONSTRAINT [PK_PERMISOPORCENTAJE]
		PRIMARY KEY
		NONCLUSTERED
		([PE_CODIGO], [PA_CODIGO])
	ON [PRIMARY]
)
GO
CREATE NONCLUSTERED INDEX [IX_PERMISOPORCENTAJE]
	ON [dbo].[PERMISOPORCENTAJE] ([PE_CODIGO])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERMISOPORCENTAJE] SET (LOCK_ESCALATION = TABLE)
GO
