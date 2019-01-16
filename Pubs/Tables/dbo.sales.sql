SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[sales]
Print 'Create table [dbo].[sales]'
GO
CREATE TABLE [dbo].[sales] (
		[stor_id]      [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ord_num]      [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ord_date]     [datetime] NOT NULL,
		[qty]          [smallint] NOT NULL,
		[payterms]     [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[title_id]     [dbo].[tid] NOT NULL,
		CONSTRAINT [UPKCL_sales]
		PRIMARY KEY
		CLUSTERED
		([stor_id], [ord_num], [title_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Create foreign key FK__sales__stor_id__4AB81AF0 on [dbo].[sales]
Print 'Create foreign key FK__sales__stor_id__4AB81AF0 on [dbo].[sales]'
GO
ALTER TABLE [dbo].[sales]
	WITH CHECK
	ADD CONSTRAINT [FK__sales__stor_id__4AB81AF0]
	FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
ALTER TABLE [dbo].[sales]
	CHECK CONSTRAINT [FK__sales__stor_id__4AB81AF0]

GO
-- Create foreign key FK__sales__title_id__4BAC3F29 on [dbo].[sales]
Print 'Create foreign key FK__sales__title_id__4BAC3F29 on [dbo].[sales]'
GO
ALTER TABLE [dbo].[sales]
	WITH CHECK
	ADD CONSTRAINT [FK__sales__title_id__4BAC3F29]
	FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
ALTER TABLE [dbo].[sales]
	CHECK CONSTRAINT [FK__sales__title_id__4BAC3F29]

GO
-- Create index titleidind on [dbo].[sales]
Print 'Create index titleidind on [dbo].[sales]'
GO
CREATE NONCLUSTERED INDEX [titleidind]
	ON [dbo].[sales] ([title_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[sales] SET (LOCK_ESCALATION = TABLE)
GO
