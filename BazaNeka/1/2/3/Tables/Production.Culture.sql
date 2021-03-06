CREATE TABLE [Production].[Culture] (
		[CultureID]        [nchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_Culture_CultureID]
		PRIMARY KEY
		CLUSTERED
		([CultureID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[Culture]
	ADD
	CONSTRAINT [DF_Culture_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Culture_Name]
	ON [Production].[Culture] ([Name])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[Culture] SET (LOCK_ESCALATION = TABLE)
GO
