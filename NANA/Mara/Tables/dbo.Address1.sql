SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address1] (
		[ID]                [int] IDENTITY(1, 1) NOT NULL,
		[City]              [varchar](120) COLLATE Latin1_General_CI_AS NULL,
		[PostalCode]        [int] NULL,
		[UserAddressID]     [int] NULL
)
GO
ALTER TABLE [dbo].[Address1]
	WITH CHECK
	ADD CONSTRAINT [FK__Address__UserAdd__1273C1CD]
	FOREIGN KEY ([UserAddressID]) REFERENCES [dbo].[UserAddress] ([AddresID])
ALTER TABLE [dbo].[Address1]
	CHECK CONSTRAINT [FK__Address__UserAdd__1273C1CD]

GO
ALTER TABLE [dbo].[Address1] SET (LOCK_ESCALATION = TABLE)
GO
