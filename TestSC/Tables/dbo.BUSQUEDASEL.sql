SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUSQUEDASEL] (
		[BUS_CODIGO]            [int] NULL,
		[BUS_NOMBRE]            [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUS_CLASIFICA]         [int] NULL,
		[BUS_FORMA]             [int] NULL,
		[BUS_AGRUPACION]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BUS_FILTRO]            [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUS_FILTROFORMULA]     [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUS_PARAMTEXT]         [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUS_PARAMTEXT2]        [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUS_SQL]               [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_BUSQUEDASEL]
		PRIMARY KEY
		NONCLUSTERED
		([BUS_NOMBRE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BUSQUEDASEL]
	ADD
	CONSTRAINT [DF_BUSQUEDASEL_BUS_FILTRO]
	DEFAULT ('') FOR [BUS_FILTRO]
GO
ALTER TABLE [dbo].[BUSQUEDASEL]
	ADD
	CONSTRAINT [DF_BUSQUEDASEL_BUS_FILTROFORMULA]
	DEFAULT ('') FOR [BUS_FILTROFORMULA]
GO
ALTER TABLE [dbo].[BUSQUEDASEL]
	ADD
	CONSTRAINT [DF_BUSQUEDASEL_BUS_PARAMTEXT]
	DEFAULT ('') FOR [BUS_PARAMTEXT]
GO
ALTER TABLE [dbo].[BUSQUEDASEL]
	ADD
	CONSTRAINT [DF_BUSQUEDASEL_BUS_PARAMTEXT2]
	DEFAULT ('') FOR [BUS_PARAMTEXT2]
GO
ALTER TABLE [dbo].[BUSQUEDASEL]
	ADD
	CONSTRAINT [DF_BUSQUEDASEL_BUS_SQL]
	DEFAULT ('') FOR [BUS_SQL]
GO
ALTER TABLE [dbo].[BUSQUEDASEL] SET (LOCK_ESCALATION = TABLE)
GO