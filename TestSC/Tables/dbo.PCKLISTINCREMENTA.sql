SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PCKLISTINCREMENTA] (
		[PL_CODIGO]     [int] NOT NULL,
		[IC_CODIGO]     [smallint] NOT NULL,
		[PLI_VALOR]     [decimal](38, 6) NULL,
		CONSTRAINT [PK_PCKLISTINCREMENTA]
		PRIMARY KEY
		CLUSTERED
		([PL_CODIGO], [IC_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PCKLISTINCREMENTA] SET (LOCK_ESCALATION = TABLE)
GO
