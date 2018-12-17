SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAddress] (
		[AddresID]      [int] IDENTITY(1, 1) NOT NULL,
		[FirstName]     [varchar](100) COLLATE Latin1_General_CI_AS NULL,
		[Lastname]      [varchar](150) COLLATE Latin1_General_CI_AS NULL,
		[Address]       [varchar](250) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK__UserAddr__5FCF6E8A549A221F]
		PRIMARY KEY
		CLUSTERED
		([AddresID])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[UserAddress] SET (LOCK_ESCALATION = TABLE)
GO
