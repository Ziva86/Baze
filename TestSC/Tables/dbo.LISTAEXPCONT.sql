SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LISTAEXPCONT] (
		[LEC_INDICEC]         [int] IDENTITY(1, 1) NOT NULL,
		[LED_INDICED]         [int] NOT NULL,
		[LE_CODIGO]           [int] NOT NULL,
		[LEC_MARCA]           [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_MODELO]          [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_SERIE]           [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_EQUIPADOCON]     [varchar](3100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_ENUSO]           [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_PELIGROSO]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LEC_MILLAGE]         [int] NULL,
		[LEC_NOACTIVO]        [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_LISTAEXPCONT]
		PRIMARY KEY
		NONCLUSTERED
		([LEC_INDICEC], [LED_INDICED], [LE_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[LISTAEXPCONT]
	ADD
	CONSTRAINT [DF_LISTAEXPCONT_LEC_EQUIPADOCON]
	DEFAULT ('') FOR [LEC_EQUIPADOCON]
GO
ALTER TABLE [dbo].[LISTAEXPCONT]
	ADD
	CONSTRAINT [DF_LISTAEXPCONT_LEC_ENUSO]
	DEFAULT ('N') FOR [LEC_ENUSO]
GO
ALTER TABLE [dbo].[LISTAEXPCONT] SET (LOCK_ESCALATION = TABLE)
GO
