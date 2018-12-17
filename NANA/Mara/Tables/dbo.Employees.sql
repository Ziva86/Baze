SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees] (
		[EmpId]       [int] IDENTITY(1, 1) NOT NULL,
		[EmpName]     [varchar](16) COLLATE Latin1_General_CI_AS NULL,
		[Phone]       [varchar](16) COLLATE Latin1_General_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Employees] SET (LOCK_ESCALATION = TABLE)
GO
