SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [Production].[ProductDocument] (
		[ProductID]        [int] NOT NULL,
		[DocumentNode]     [hierarchyid] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_ProductDocument_ProductID_DocumentNode]
		PRIMARY KEY
		CLUSTERED
		([ProductID], [DocumentNode])
	ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'INDEX', N'PK_ProductDocument_ProductID_DocumentNode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'CONSTRAINT', N'PK_ProductDocument_ProductID_DocumentNode'
GO
ALTER TABLE [Production].[ProductDocument]
	ADD
	CONSTRAINT [DF_ProductDocument_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'CONSTRAINT', N'DF_ProductDocument_ModifiedDate'
GO
ALTER TABLE [Production].[ProductDocument]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductDocument_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[ProductDocument]
	CHECK CONSTRAINT [FK_ProductDocument_Product_ProductID]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'CONSTRAINT', N'FK_ProductDocument_Product_ProductID'
GO
ALTER TABLE [Production].[ProductDocument]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductDocument_Document_DocumentNode]
	FOREIGN KEY ([DocumentNode]) REFERENCES [Production].[Document] ([DocumentNode])
ALTER TABLE [Production].[ProductDocument]
	CHECK CONSTRAINT [FK_ProductDocument_Document_DocumentNode]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Document.DocumentNode.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'CONSTRAINT', N'FK_ProductDocument_Document_DocumentNode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cross-reference table mapping products to related product documents.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Product identification number. Foreign key to Product.ProductID.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'COLUMN', N'ProductID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Document identification number. Foreign key to Document.DocumentNode.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'COLUMN', N'DocumentNode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'Production', 'TABLE', N'ProductDocument', 'COLUMN', N'ModifiedDate'
GO
ALTER TABLE [Production].[ProductDocument] SET (LOCK_ESCALATION = TABLE)
GO
