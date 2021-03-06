SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_FORMULAS] (
		[CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[NOMBRE]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TEXTO]      [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PADRE]      [int] NULL,
		[ERROR]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_TEMP_FORMULAS]
		UNIQUE
		NONCLUSTERED
		([CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_TEMP_FORMULAS]
		PRIMARY KEY
		CLUSTERED
		([NOMBRE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TEMP_FORMULAS]
	ADD
	CONSTRAINT [DF_TEMP_FORMULAS_ERROR]
	DEFAULT ('N') FOR [ERROR]
GO
ALTER TABLE [dbo].[TEMP_FORMULAS] SET (LOCK_ESCALATION = TABLE)
GO
