SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[Orders]
Print 'Create table [dbo].[Orders]'
GO
CREATE TABLE [dbo].[Orders] (
		[OrderID]            [int] IDENTITY(1, 1) NOT NULL,
		[CustomerID]         [nchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmployeeID]         [int] NULL,
		[OrderDate]          [datetime] NULL,
		[RequiredDate]       [datetime] NULL,
		[ShippedDate]        [datetime] NULL,
		[ShipVia]            [int] NULL,
		[Freight]            [money] NULL,
		[ShipName]           [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ShipAddress]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ShipCity]           [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ShipRegion]         [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ShipPostalCode]     [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ShipCountry]        [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_Orders]
		PRIMARY KEY
		CLUSTERED
		([OrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Add default constraint DF_Orders_Freight to [dbo].[Orders]
Print 'Add default constraint DF_Orders_Freight to [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders]
	ADD
	CONSTRAINT [DF_Orders_Freight]
	DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Orders] SET (LOCK_ESCALATION = TABLE)
GO
