CREATE TABLE [Production].[ProductPhoto] (
		[ProductPhotoID]             [int] IDENTITY(1, 1) NOT NULL,
		[ThumbNailPhoto]             [varbinary](max) NULL,
		[ThumbnailPhotoFileName]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LargePhoto]                 [varbinary](max) NULL,
		[LargePhotoFileName]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ModifiedDate]               [datetime] NOT NULL,
		CONSTRAINT [PK_ProductPhoto_ProductPhotoID]
		PRIMARY KEY
		CLUSTERED
		([ProductPhotoID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductPhoto]
	ADD
	CONSTRAINT [DF_ProductPhoto_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Production].[ProductPhoto] SET (LOCK_ESCALATION = TABLE)
GO
