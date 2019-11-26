SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOOKUPFIELD] (
		[LF_CODIGO]     [int] NOT NULL,
		[LF_TABLE]      [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LF_FIELD]      [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LF_LOOKUP]     [int] NULL,
		CONSTRAINT [IX_LOOKUPFIELD]
		UNIQUE
		NONCLUSTERED
		([LF_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_LOOKUPFIELD]
		PRIMARY KEY
		NONCLUSTERED
		([LF_TABLE], [LF_FIELD])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[LOOKUPFIELD] SET (LOCK_ESCALATION = TABLE)
GO
