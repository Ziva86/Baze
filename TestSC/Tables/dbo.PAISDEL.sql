SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAISDEL] (
		[PA_CODIGO]     [int] NULL,
		[PA_CORTO]      [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PAISDEL] SET (LOCK_ESCALATION = TABLE)
GO
