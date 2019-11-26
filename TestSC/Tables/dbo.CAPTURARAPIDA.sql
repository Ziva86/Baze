SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAPTURARAPIDA] (
		[ORDEN]                 [int] IDENTITY(1, 1) NOT NULL,
		[CODIGOFACT]            [int] NOT NULL,
		[TIPOFACT]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[NOPARTE]               [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[NOPARTEAUX]            [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CANTIDAD]              [decimal](38, 6) NOT NULL,
		[COSTO]                 [decimal](38, 6) NOT NULL,
		[COSTOTOT]              [decimal](38, 6) NOT NULL,
		[PESO]                  [decimal](38, 6) NOT NULL,
		[PESOLB]                [decimal](38, 6) NOT NULL,
		[ORIGEN]                [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MEDIDA]                [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CANTIDADCOMERCIAL]     [decimal](38, 6) NULL,
		[MEDIDACOMERCIAL]       [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EXISTE]                [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ORDCOMPRA]             [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_CAPTURARAPIDA]
		UNIQUE
		NONCLUSTERED
		([ORDEN])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_TIPOFACT]
	DEFAULT ('I') FOR [TIPOFACT]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_NOPARTEAUX]
	DEFAULT ('') FOR [NOPARTEAUX]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_CANTIDAD]
	DEFAULT (0) FOR [CANTIDAD]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_COSTO]
	DEFAULT (0) FOR [COSTO]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_COSTOTOT]
	DEFAULT (0) FOR [COSTOTOT]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_PESO]
	DEFAULT (0) FOR [PESO]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_PESOLB]
	DEFAULT (0) FOR [PESOLB]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA]
	ADD
	CONSTRAINT [DF_CAPTURARAPIDA_EXISTE]
	DEFAULT ('S') FOR [EXISTE]
GO
ALTER TABLE [dbo].[CAPTURARAPIDA] SET (LOCK_ESCALATION = TABLE)
GO
