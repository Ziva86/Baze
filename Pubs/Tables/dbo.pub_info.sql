SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[pub_info]
Print 'Create table [dbo].[pub_info]'
GO
CREATE TABLE [dbo].[pub_info] (
		[pub_id]      [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[logo]        [image] NULL,
		[pr_info]     [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [UPKCL_pubinfo]
		PRIMARY KEY
		CLUSTERED
		([pub_id])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
-- Create foreign key FK__pub_info__pub_id__571DF1D5 on [dbo].[pub_info]
Print 'Create foreign key FK__pub_info__pub_id__571DF1D5 on [dbo].[pub_info]'
GO
ALTER TABLE [dbo].[pub_info]
	WITH CHECK
	ADD CONSTRAINT [FK__pub_info__pub_id__571DF1D5]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
ALTER TABLE [dbo].[pub_info]
	CHECK CONSTRAINT [FK__pub_info__pub_id__571DF1D5]

GO
ALTER TABLE [dbo].[pub_info] SET (LOCK_ESCALATION = TABLE)
GO
