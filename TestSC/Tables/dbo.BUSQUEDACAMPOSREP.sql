SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUSQUEDACAMPOSREP] (
		[CAMPO]           [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DESCRIPCION]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_BUSQUEDACAMPOSREP]
		PRIMARY KEY
		CLUSTERED
		([CAMPO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BUSQUEDACAMPOSREP] SET (LOCK_ESCALATION = TABLE)
GO