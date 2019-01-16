SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[titles]
Print 'Create table [dbo].[titles]'
GO
CREATE TABLE [dbo].[titles] (
		[title_id]      [dbo].[tid] NOT NULL,
		[title]         [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[type]          [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[pub_id]        [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[price]         [money] NULL,
		[advance]       [money] NULL,
		[royalty]       [int] NULL,
		[ytd_sales]     [int] NULL,
		[notes]         [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[pubdate]       [datetime] NOT NULL,
		CONSTRAINT [UPKCL_titleidind]
		PRIMARY KEY
		CLUSTERED
		([title_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Add default constraint DF__titles__type__403A8C7D to [dbo].[titles]
Print 'Add default constraint DF__titles__type__403A8C7D to [dbo].[titles]'
GO
ALTER TABLE [dbo].[titles]
	ADD
	CONSTRAINT [DF__titles__type__403A8C7D]
	DEFAULT ('UNDECIDED') FOR [type]
GO
-- Add default constraint DF__titles__pubdate__4222D4EF to [dbo].[titles]
Print 'Add default constraint DF__titles__pubdate__4222D4EF to [dbo].[titles]'
GO
ALTER TABLE [dbo].[titles]
	ADD
	CONSTRAINT [DF__titles__pubdate__4222D4EF]
	DEFAULT (getdate()) FOR [pubdate]
GO
-- Create foreign key FK__titles__pub_id__412EB0B6 on [dbo].[titles]
Print 'Create foreign key FK__titles__pub_id__412EB0B6 on [dbo].[titles]'
GO
ALTER TABLE [dbo].[titles]
	WITH CHECK
	ADD CONSTRAINT [FK__titles__pub_id__412EB0B6]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
ALTER TABLE [dbo].[titles]
	CHECK CONSTRAINT [FK__titles__pub_id__412EB0B6]

GO
-- Create index titleind on [dbo].[titles]
Print 'Create index titleind on [dbo].[titles]'
GO
CREATE NONCLUSTERED INDEX [titleind]
	ON [dbo].[titles] ([title])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[titles] SET (LOCK_ESCALATION = TABLE)
GO
