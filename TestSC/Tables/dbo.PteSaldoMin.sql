SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PteSaldoMin] (
		[FED_INDICED]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[NoParte]         [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PteSaldoMin] SET (LOCK_ESCALATION = TABLE)
GO
