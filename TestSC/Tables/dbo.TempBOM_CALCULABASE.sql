SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempBOM_CALCULABASE] (
		[BST_CODIGO]         [int] NULL,
		[BST_PT]             [int] NOT NULL,
		[BST_PERTENECE]      [int] NOT NULL,
		[BST_NIVEL]          [int] NOT NULL,
		[BST_ENTRAVIGOR]     [datetime] NOT NULL,
		[BST_HIJO]           [int] NOT NULL,
		[BST_INCORPOR]       [decimal](38, 6) NOT NULL,
		[BST_DISCH]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TI_CODIGO]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ME_CODIGO]          [int] NULL,
		[FACTCONV]           [decimal](28, 14) NOT NULL,
		[BST_PERINI]         [datetime] NOT NULL,
		[BST_PERFIN]         [datetime] NOT NULL,
		[ME_GEN]             [int] NULL,
		[BST_TRANS]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BST_TIPOCOSTO]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_TIP_ENS]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PA_CODIGO]          [int] NULL,
		[BST_COSTO]          [decimal](38, 6) NULL,
		[AR_CODIGO]          [int] NULL,
		CONSTRAINT [IX_TempBOM_CALCULABASE]
		UNIQUE
		NONCLUSTERED
		([BST_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE]
	ADD
	CONSTRAINT [DF_TempBOM_CALCULABASE_BST_INCORPOR]
	DEFAULT (1) FOR [BST_INCORPOR]
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE]
	ADD
	CONSTRAINT [DF_TempBOM_CALCULABASE_BST_DISCH]
	DEFAULT ('S') FOR [BST_DISCH]
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE]
	ADD
	CONSTRAINT [DF_TempBOM_CALCULABASE_FACTCONV]
	DEFAULT (1) FOR [FACTCONV]
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE]
	ADD
	CONSTRAINT [DF_TempBOM_CALCULABASE_BST_PERFIN]
	DEFAULT ('01/01/9999') FOR [BST_PERFIN]
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE]
	ADD
	CONSTRAINT [DF_TempBOM_CALCULABASE_BST_TRANS]
	DEFAULT ('N') FOR [BST_TRANS]
GO
ALTER TABLE [dbo].[TempBOM_CALCULABASE] SET (LOCK_ESCALATION = TABLE)
GO
