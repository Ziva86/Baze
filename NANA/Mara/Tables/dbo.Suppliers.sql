SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers] (
		[SupplierId]       [int] IDENTITY(1, 1) NOT NULL,
		[SupplierName]     [varchar](64) COLLATE Latin1_General_CI_AS NULL,
		[Fax]              [varchar](16) COLLATE Latin1_General_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Suppliers] SET (LOCK_ESCALATION = TABLE)
GO
