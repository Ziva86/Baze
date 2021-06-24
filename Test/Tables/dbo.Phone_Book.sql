SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone_Book] (
		[UserID]           [int] IDENTITY(1, 1) NOT NULL,
		[Name]             [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Street]           [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]             [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Home_phone]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Mobile_phone]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__Phone_Book__Mobile_phone__10002]
		PRIMARY KEY
		CLUSTERED
		([UserID])
)
GO
ALTER TABLE [dbo].[Phone_Book] SET (LOCK_ESCALATION = TABLE)
GO
