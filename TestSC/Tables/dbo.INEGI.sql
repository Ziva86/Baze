SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INEGI] (
		[IG_CODIGO]      [int] NOT NULL,
		[IG_INICIO]      [datetime] NOT NULL,
		[IG_FINAL]       [datetime] NOT NULL,
		[IG_UTIL]        [decimal](38, 6) NULL,
		[IG_VA]          [decimal](38, 6) NULL,
		[CL_CODIGO]      [int] NOT NULL,
		[IG_OBSERVA]     [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_INEGI]
		UNIQUE
		NONCLUSTERED
		([IG_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_INEGI]
		PRIMARY KEY
		NONCLUSTERED
		([IG_INICIO], [IG_FINAL])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[INEGI]
	ADD
	CONSTRAINT [DF_INEGI_CL_CODIGO]
	DEFAULT (1) FOR [CL_CODIGO]
GO
ALTER TABLE [dbo].[INEGI] SET (LOCK_ESCALATION = TABLE)
GO
