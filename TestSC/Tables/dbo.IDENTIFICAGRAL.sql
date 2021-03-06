SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IDENTIFICAGRAL] (
		[IDEG_CODIGO]         [int] IDENTITY(1, 1) NOT NULL,
		[IDE_CODIGO]          [int] NOT NULL,
		[IDEG_NIVEL]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IDEG_MOVIMIENTO]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IDED_CODIGO]         [int] NULL,
		[IDEG_DESC]           [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[IDEG_DESC2]          [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IDEG_TIPO]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IDED_CODIGO2]        [int] NULL,
		[CP_CODIGO]           [int] NOT NULL,
		[IDED_CODIGO3]        [int] NULL,
		[IDEG_DESC3]          [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_IDENTIFICAGRAL]
		UNIQUE
		NONCLUSTERED
		([IDEG_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_IDENTIFICAGRAL]
		PRIMARY KEY
		CLUSTERED
		([IDE_CODIGO], [CP_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[IDENTIFICAGRAL]
	ADD
	CONSTRAINT [DF_IDENTIFICAGRAL_CP_CODIGO]
	DEFAULT (0) FOR [CP_CODIGO]
GO
ALTER TABLE [dbo].[IDENTIFICAGRAL]
	ADD
	CONSTRAINT [DF_IDENTIFICAGRAL_IDEG_NIVEL]
	DEFAULT ('G') FOR [IDEG_NIVEL]
GO
ALTER TABLE [dbo].[IDENTIFICAGRAL]
	ADD
	CONSTRAINT [DF_IDENTIFICAGRAL_IDEG_DESC]
	DEFAULT ('') FOR [IDEG_DESC]
GO
ALTER TABLE [dbo].[IDENTIFICAGRAL]
	ADD
	CONSTRAINT [DF_IDENTIFICAGRAL_IDEG_TIPO]
	DEFAULT ('T') FOR [IDEG_TIPO]
GO
ALTER TABLE [dbo].[IDENTIFICAGRAL] SET (LOCK_ESCALATION = TABLE)
GO
