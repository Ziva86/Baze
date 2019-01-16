SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[publishers]
Print 'Create table [dbo].[publishers]'
GO
CREATE TABLE [dbo].[publishers] (
		[pub_id]       [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[pub_name]     [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state]        [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[country]      [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [UPKCL_pubind]
		PRIMARY KEY
		CLUSTERED
		([pub_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Add check constraint CK__publisher__pub_i__3C69FB99 to [dbo].[publishers]
Print 'Add check constraint CK__publisher__pub_i__3C69FB99 to [dbo].[publishers]'
GO
ALTER TABLE [dbo].[publishers]
	ADD
	CONSTRAINT [CK__publisher__pub_i__3C69FB99]
	CHECK
	([pub_id]='1756' OR [pub_id]='1622' OR [pub_id]='0877' OR [pub_id]='0736' OR [pub_id]='1389' OR [pub_id] like '99[0-9][0-9]')
GO
ALTER TABLE [dbo].[publishers]
CHECK CONSTRAINT [CK__publisher__pub_i__3C69FB99]
GO
-- Add default constraint DF__publisher__count__3D5E1FD2 to [dbo].[publishers]
Print 'Add default constraint DF__publisher__count__3D5E1FD2 to [dbo].[publishers]'
GO
ALTER TABLE [dbo].[publishers]
	ADD
	CONSTRAINT [DF__publisher__count__3D5E1FD2]
	DEFAULT ('USA') FOR [country]
GO
ALTER TABLE [dbo].[publishers] SET (LOCK_ESCALATION = TABLE)
GO
