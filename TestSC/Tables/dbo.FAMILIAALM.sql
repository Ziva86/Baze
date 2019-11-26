SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAMILIAALM] (
		[FALM_CODIGO]       [int] IDENTITY(1, 1) NOT NULL,
		[FALM_CORTO]        [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FALM_DESC]         [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FALM_COSTO]        [decimal](38, 6) NULL,
		[ME_CORTO]          [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TI_NOMBRE]         [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ALM_RECEPCION]     [int] NULL,
		CONSTRAINT [IX_FAMILIAALM]
		UNIQUE
		NONCLUSTERED
		([FALM_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_FAMILIAALM]
		PRIMARY KEY
		CLUSTERED
		([FALM_CORTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FAMILIAALM] SET (LOCK_ESCALATION = TABLE)
GO
