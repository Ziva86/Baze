SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TCOMPRA] (
		[TR_CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[TR_CORTO]      [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TR_NOMBRE]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TR_NAME]       [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TR_TIPO]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_TCOMPRA]
		UNIQUE
		NONCLUSTERED
		([TR_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_TCOMPRA]
		PRIMARY KEY
		NONCLUSTERED
		([TR_CORTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TCOMPRA] SET (LOCK_ESCALATION = TABLE)
GO
