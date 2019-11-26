SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempBOM_ESTRUCTDESC] (
		[BST_PT]             [int] NULL,
		[BST_ENTRAVIGOR]     [datetime] NULL,
		[BST_HIJO]           [int] NOT NULL,
		[BST_INCORPOR]       [decimal](38, 6) NOT NULL,
		[BST_DISCH]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TI_CODIGO]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ME_CODIGO]          [int] NULL,
		[FACTCONV]           [decimal](28, 14) NOT NULL,
		[BST_PERINI]         [datetime] NULL,
		[BST_PERFIN]         [datetime] NULL,
		[ME_GEN]             [int] NULL,
		[BST_TRANS]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BST_TIPOCOSTO]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_TIP_ENS]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BST_NIVEL]          [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BST_TIPODESC]       [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BST_PERTENECE]      [int] NULL
)
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC]
	ADD
	CONSTRAINT [DF_TempBOM_ESTRUCTDESC_BST_INCORPOR]
	DEFAULT (1) FOR [BST_INCORPOR]
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC]
	ADD
	CONSTRAINT [DF_TempBOM_ESTRUCTDESC_BST_DISCH]
	DEFAULT ('S') FOR [BST_DISCH]
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC]
	ADD
	CONSTRAINT [DF_TempBOM_ESTRUCTDESC_FACTCONV]
	DEFAULT (1) FOR [FACTCONV]
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC]
	ADD
	CONSTRAINT [DF_TempBOM_ESTRUCTDESC_BST_PERFIN]
	DEFAULT ('01/01/9999') FOR [BST_PERFIN]
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC]
	ADD
	CONSTRAINT [DF_TempBOM_ESTRUCTDESC_BST_TRANS]
	DEFAULT ('N') FOR [BST_TRANS]
GO
ALTER TABLE [dbo].[TempBOM_ESTRUCTDESC] SET (LOCK_ESCALATION = TABLE)
GO
