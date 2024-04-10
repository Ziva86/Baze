SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlntExpSecc] (
		[PXS_CODIGO]                 [int] NOT NULL,
		[PXP_CODIGO]                 [int] NOT NULL,
		[PXS_SECCION]                [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_ORDENSECCION]           [int] NOT NULL,
		[PXS_AGRUPACION]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_QUERY]                  [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXS_PARAMTEXT]              [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_PARAMTEXT2]             [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXS_FILTRO]                 [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_ESPRINCIPAL]            [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_PADRE]                  [int] NOT NULL,
		[PXS_FILTROFORMULA]          [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_OMITIRSININFO]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_REPETIRSECCION]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_OMITIRTRANSSININFO]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXS_QUERYORDERBY]           [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_PlntExpSecc]
		UNIQUE
		NONCLUSTERED
		([PXS_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_PlntExpSecc]
		PRIMARY KEY
		CLUSTERED
		([PXP_CODIGO], [PXS_SECCION])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_ORDENSECCION]
	DEFAULT (0) FOR [PXS_ORDENSECCION]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_QUERYORDERBY]
	DEFAULT ('') FOR [PXS_QUERYORDERBY]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_AGRUPACION]
	DEFAULT ('S') FOR [PXS_AGRUPACION]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_QUERY]
	DEFAULT ('') FOR [PXS_QUERY]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_PARAMTEXT]
	DEFAULT ('') FOR [PXS_PARAMTEXT]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_PARAMTEXT2]
	DEFAULT ('') FOR [PXS_PARAMTEXT2]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_FILTRO]
	DEFAULT ('') FOR [PXS_FILTRO]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_ESPRINCIPAL]
	DEFAULT ('N') FOR [PXS_ESPRINCIPAL]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_PADRE]
	DEFAULT (0) FOR [PXS_PADRE]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_FILTROFORMULA]
	DEFAULT ('') FOR [PXS_FILTROFORMULA]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_OMITIRSININFO]
	DEFAULT ('N') FOR [PXS_OMITIRSININFO]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_REPETIRSECCION]
	DEFAULT ('N') FOR [PXS_REPETIRSECCION]
GO
ALTER TABLE [dbo].[PlntExpSecc]
	ADD
	CONSTRAINT [DF_PlntExpSecc_PXS_OMITIRTRANSSININFO]
	DEFAULT ('N') FOR [PXS_OMITIRTRANSSININFO]
GO
ALTER TABLE [dbo].[PlntExpSecc] SET (LOCK_ESCALATION = TABLE)
GO