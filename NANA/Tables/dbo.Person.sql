SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person] (
		[ID]         [int] NULL,
		[Name]       [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Mother]     [int] NULL,
		[Father]     [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] SET (LOCK_ESCALATION = TABLE)
GO
