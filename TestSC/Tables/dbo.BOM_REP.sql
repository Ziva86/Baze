SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOM_REP] (
		[BSR_CODIGO]         [int] IDENTITY(1, 1) NOT NULL,
		[BST_CODIGO]         [int] NULL,
		[BST_PT]             [int] NULL,
		[BST_CODIGOPT]       [int] NULL,
		[BST_PERTENECE]      [int] NULL,
		[BST_NIVEL]          [int] NULL,
		[BST_ENTRAVIGOR]     [datetime] NULL,
		[BST_HIJO]           [int] NULL,
		[BST_INCORPOR]       [decimal](38, 6) NULL,
		[BST_DISCH]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TI_CODIGO]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ME_CODIGO]          [int] NULL,
		[FACTCONV]           [decimal](28, 14) NULL,
		[BST_PERINI]         [datetime] NULL,
		[BST_PERFIN]         [datetime] NULL,
		[ME_GEN]             [int] NULL,
		[BST_TRANS]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BST_TIPOCOSTO]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_TIP_ENS]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PA_CODIGO]          [int] NULL,
		[BST_TIPO]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SPI_CODIGO]         [int] NULL,
		[SPI_PT]             [int] NULL,
		[BST_SEC]            [smallint] NULL,
		[PA_ORIGEN]          [int] NULL,
		[BSR_GRAV_MP]        [decimal](38, 6) NULL,
		[BSR_GRAV_ADD]       [decimal](38, 6) NULL,
		[BSR_GRAV_EMP]       [decimal](38, 6) NULL,
		[BSR_GRAV_GI]        [decimal](38, 6) NULL,
		[BSR_GRAV_GI_MX]     [decimal](38, 6) NULL,
		[BSR_GRAV_MO]        [decimal](38, 6) NULL,
		[BSR_NG_MP]          [decimal](38, 6) NULL,
		[BSR_NG_ADD]         [decimal](38, 6) NULL,
		[BSR_NG_EMP]         [decimal](38, 6) NULL,
		[BSR_COSTO]          [decimal](38, 6) NULL,
		[BSR_DEF_TIP]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_BOM_REP]
		UNIQUE
		NONCLUSTERED
		([BSR_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BST_INCORPOR]
	DEFAULT (1) FOR [BST_INCORPOR]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BST_DISCH]
	DEFAULT ('S') FOR [BST_DISCH]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_FACTCONV]
	DEFAULT (1) FOR [FACTCONV]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BST_PERFIN]
	DEFAULT ('01/01/9999') FOR [BST_PERFIN]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BST_TRANS]
	DEFAULT ('N') FOR [BST_TRANS]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_MP]
	DEFAULT (0) FOR [BSR_GRAV_MP]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_ADD]
	DEFAULT (0) FOR [BSR_GRAV_ADD]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_EMP]
	DEFAULT (0) FOR [BSR_GRAV_EMP]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_GI]
	DEFAULT (0) FOR [BSR_GRAV_GI]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_GI_MX]
	DEFAULT (0) FOR [BSR_GRAV_GI_MX]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_GRAV_MO]
	DEFAULT (0) FOR [BSR_GRAV_MO]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_NG_MP]
	DEFAULT (0) FOR [BSR_NG_MP]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_NG_ADD]
	DEFAULT (0) FOR [BSR_NG_ADD]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_NG_EMP]
	DEFAULT (0) FOR [BSR_NG_EMP]
GO
ALTER TABLE [dbo].[BOM_REP]
	ADD
	CONSTRAINT [DF_BOM_REP_BSR_COSTO]
	DEFAULT (0) FOR [BSR_COSTO]
GO
ALTER TABLE [dbo].[BOM_REP] SET (LOCK_ESCALATION = TABLE)
GO
