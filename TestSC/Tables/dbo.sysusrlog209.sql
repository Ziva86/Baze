SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysusrlog209] (
		[sysusrlog_id]     [int] IDENTITY(1, 1) NOT NULL,
		[user_id]          [smallint] NOT NULL,
		[mov_id]           [smallint] NOT NULL,
		[referencia]       [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[frmtag]           [smallint] NOT NULL,
		[fechahora]        [datetime] NOT NULL,
		CONSTRAINT [IX_sysusrlog209]
		UNIQUE
		NONCLUSTERED
		([sysusrlog_id])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[sysusrlog209] SET (LOCK_ESCALATION = TABLE)
GO
