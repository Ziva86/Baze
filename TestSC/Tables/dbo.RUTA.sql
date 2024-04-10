SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RUTA] (
		[RU_CODIGO]         [smallint] IDENTITY(1, 1) NOT NULL,
		[RU_CORTO]          [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RU_DESC]           [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RU_ORIGEN]         [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ES_ORIGEN]         [int] NULL,
		[RU_DESTINO]        [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ES_DESTINO]        [int] NULL,
		[RU_KILOMETROS]     [decimal](38, 6) NULL,
		CONSTRAINT [IX_RUTA]
		UNIQUE
		NONCLUSTERED
		([RU_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_RUTA]
		PRIMARY KEY
		NONCLUSTERED
		([RU_CORTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[RUTA] SET (LOCK_ESCALATION = TABLE)
GO