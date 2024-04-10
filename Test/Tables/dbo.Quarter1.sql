SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quarter1] (
		[Apple]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Orange]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Banana]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
EXEC sp_addextendedproperty N'MS_Description', N'ccxc', 'SCHEMA', N'dbo', 'TABLE', N'Quarter1', NULL, NULL
GO
ALTER TABLE [dbo].[Quarter1] SET (LOCK_ESCALATION = TABLE)
GO
