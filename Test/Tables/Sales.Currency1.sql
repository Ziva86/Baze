SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Sales].[Currency1] (
		[CurrencyCode]     [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL
)
GO
ALTER TABLE [Sales].[Currency1]
	ADD
	CONSTRAINT [PK_Currency_CurrencyCode]
	PRIMARY KEY
	CLUSTERED
	([CurrencyCode])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'INDEX', N'PK_Currency_CurrencyCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'CONSTRAINT', N'PK_Currency_CurrencyCode'
GO
ALTER TABLE [Sales].[Currency1]
	ADD
	CONSTRAINT [DF_Currency_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'CONSTRAINT', N'DF_Currency_ModifiedDate'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Currency_Name]
	ON [Sales].[Currency1] ([Name])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'INDEX', N'AK_Currency_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table containing standard ISO currencies.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ISO code for the Currency.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'COLUMN', N'CurrencyCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Currency name.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'COLUMN', N'Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Sales', 'TABLE', N'Currency1', 'COLUMN', N'ModifiedDate'
GO
ALTER TABLE [Sales].[Currency1] SET (LOCK_ESCALATION = TABLE)
GO
