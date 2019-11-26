SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIGASDESCARGA] (
		[LDE_CODIGO]           [smallint] IDENTITY(1, 1) NOT NULL,
		[LDE_LIGADESCARGA]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_LIGASDESCARGA]
		UNIQUE
		NONCLUSTERED
		([LDE_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_LIGASDESCARGA]
		PRIMARY KEY
		CLUSTERED
		([LDE_LIGADESCARGA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[LIGASDESCARGA] SET (LOCK_ESCALATION = TABLE)
GO
