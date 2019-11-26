SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[MyTable1] (
		[MyDecimalColumn]     [decimal](5, 2) NULL,
		[MyNumericColumn]     [numeric](10, 5) NULL
)
GO
ALTER TABLE [dbo].[MyTable1] SET (LOCK_ESCALATION = TABLE)
GO
