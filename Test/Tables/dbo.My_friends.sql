SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[My_friends] (
		[FriendID]     [int] IDENTITY(1, 1) NOT NULL,
		[Name]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_My_friends_10004]
		PRIMARY KEY
		CLUSTERED
		([FriendID])
)
GO
ALTER TABLE [dbo].[My_friends] SET (LOCK_ESCALATION = TABLE)
GO
