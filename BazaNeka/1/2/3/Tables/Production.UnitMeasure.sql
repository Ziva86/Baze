CREATE TABLE [Production].[UnitMeasure] (
		[UnitMeasureCode]     [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Name]                [dbo].[Name] NOT NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_UnitMeasure_UnitMeasureCode]
		PRIMARY KEY
		CLUSTERED
		([UnitMeasureCode])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Production].[UnitMeasure]
	ADD
	CONSTRAINT [DF_UnitMeasure_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_UnitMeasure_Name]
	ON [Production].[UnitMeasure] ([Name])
	ON [PRIMARY]
GO
ALTER TABLE [Production].[UnitMeasure] SET (LOCK_ESCALATION = TABLE)
GO
