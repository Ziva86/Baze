SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quarter2] (
		[Apple]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Orange]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Banana]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Quarter2] SET (LOCK_ESCALATION = TABLE)
GO
