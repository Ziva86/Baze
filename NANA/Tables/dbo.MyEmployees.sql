SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyEmployees] (
		[EmployeeID]     [smallint] NOT NULL,
		[FirstName]      [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LastName]       [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Title]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DeptID]         [smallint] NOT NULL,
		[ManagerID]      [int] NULL,
		CONSTRAINT [PK_EmployeeID]
		PRIMARY KEY
		CLUSTERED
		([EmployeeID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MyEmployees] SET (LOCK_ESCALATION = TABLE)
GO
