SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[titleauthor]
Print 'Create table [dbo].[titleauthor]'
GO
CREATE TABLE [dbo].[titleauthor] (
		[au_id]          [dbo].[id] NOT NULL,
		[title_id]       [dbo].[tid] NOT NULL,
		[au_ord]         [tinyint] NULL,
		[royaltyper]     [int] NULL,
		CONSTRAINT [UPKCL_taind]
		PRIMARY KEY
		CLUSTERED
		([au_id], [title_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Create foreign key FK__titleauth__au_id__44FF419A on [dbo].[titleauthor]
Print 'Create foreign key FK__titleauth__au_id__44FF419A on [dbo].[titleauthor]'
GO
ALTER TABLE [dbo].[titleauthor]
	WITH CHECK
	ADD CONSTRAINT [FK__titleauth__au_id__44FF419A]
	FOREIGN KEY ([au_id]) REFERENCES [dbo].[authors] ([au_id])
ALTER TABLE [dbo].[titleauthor]
	CHECK CONSTRAINT [FK__titleauth__au_id__44FF419A]

GO
-- Create foreign key FK__titleauth__title__45F365D3 on [dbo].[titleauthor]
Print 'Create foreign key FK__titleauth__title__45F365D3 on [dbo].[titleauthor]'
GO
ALTER TABLE [dbo].[titleauthor]
	WITH CHECK
	ADD CONSTRAINT [FK__titleauth__title__45F365D3]
	FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
ALTER TABLE [dbo].[titleauthor]
	CHECK CONSTRAINT [FK__titleauth__title__45F365D3]

GO
-- Create index auidind on [dbo].[titleauthor]
Print 'Create index auidind on [dbo].[titleauthor]'
GO
CREATE NONCLUSTERED INDEX [auidind]
	ON [dbo].[titleauthor] ([au_id])
	ON [PRIMARY]
GO
-- Create index titleidind on [dbo].[titleauthor]
Print 'Create index titleidind on [dbo].[titleauthor]'
GO
CREATE NONCLUSTERED INDEX [titleidind]
	ON [dbo].[titleauthor] ([title_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[titleauthor] SET (LOCK_ESCALATION = TABLE)
GO
