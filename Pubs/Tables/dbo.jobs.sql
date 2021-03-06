﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[jobs]
Print 'Create table [dbo].[jobs]'
GO
CREATE TABLE [dbo].[jobs] (
		[job_id]       [smallint] IDENTITY(1, 1) NOT NULL,
		[job_desc]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[min_lvl]      [tinyint] NOT NULL,
		[max_lvl]      [tinyint] NOT NULL,
		CONSTRAINT [PK__jobs__6E32B6A5CFD9E757]
		PRIMARY KEY
		CLUSTERED
		([job_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Add check constraint CK__jobs__min_lvl__534D60F1 to [dbo].[jobs]
Print 'Add check constraint CK__jobs__min_lvl__534D60F1 to [dbo].[jobs]'
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [CK__jobs__min_lvl__534D60F1]
	CHECK
	([min_lvl]>=(10))
GO
ALTER TABLE [dbo].[jobs]
CHECK CONSTRAINT [CK__jobs__min_lvl__534D60F1]
GO
-- Add check constraint CK__jobs__max_lvl__5441852A to [dbo].[jobs]
Print 'Add check constraint CK__jobs__max_lvl__5441852A to [dbo].[jobs]'
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [CK__jobs__max_lvl__5441852A]
	CHECK
	([max_lvl]<=(250))
GO
ALTER TABLE [dbo].[jobs]
CHECK CONSTRAINT [CK__jobs__max_lvl__5441852A]
GO
-- Add default constraint DF__jobs__job_desc__52593CB8 to [dbo].[jobs]
Print 'Add default constraint DF__jobs__job_desc__52593CB8 to [dbo].[jobs]'
GO
ALTER TABLE [dbo].[jobs]
	ADD
	CONSTRAINT [DF__jobs__job_desc__52593CB8]
	DEFAULT ('New Position - title not formalized yet') FOR [job_desc]
GO
ALTER TABLE [dbo].[jobs] SET (LOCK_ESCALATION = TABLE)
GO
