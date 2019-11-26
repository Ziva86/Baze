SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FUNCION] (
		[FUN_CODIGO]     [smallint] IDENTITY(1, 1) NOT NULL,
		[FUN_CORTO]      [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FUN_DESC]       [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_FUNCION]
		UNIQUE
		NONCLUSTERED
		([FUN_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_FUNCION]
		PRIMARY KEY
		NONCLUSTERED
		([FUN_CORTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FUNCION] SET (LOCK_ESCALATION = TABLE)
GO
