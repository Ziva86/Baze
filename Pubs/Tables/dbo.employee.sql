﻿SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

GO
-- Create table [dbo].[employee]
Print 'Create table [dbo].[employee]'
GO
CREATE TABLE [dbo].[employee] (
		[emp_id]        [dbo].[empid] NOT NULL,
		[fname]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[minit]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[lname]         [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[job_id]        [smallint] NOT NULL,
		[job_lvl]       [tinyint] NULL,
		[pub_id]        [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[hire_date]     [datetime] NOT NULL,
		CONSTRAINT [PK_emp_id]
		PRIMARY KEY
		NONCLUSTERED
		([emp_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
-- Add check constraint CK_emp_id to [dbo].[employee]
Print 'Add check constraint CK_emp_id to [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [CK_emp_id]
	CHECK
	([emp_id] like '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR [emp_id] like '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]')
GO
ALTER TABLE [dbo].[employee]
CHECK CONSTRAINT [CK_emp_id]
GO
-- Add default constraint DF__employee__job_id__5AEE82B9 to [dbo].[employee]
Print 'Add default constraint DF__employee__job_id__5AEE82B9 to [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__job_id__5AEE82B9]
	DEFAULT ((1)) FOR [job_id]
GO
-- Add default constraint DF__employee__job_lv__5CD6CB2B to [dbo].[employee]
Print 'Add default constraint DF__employee__job_lv__5CD6CB2B to [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__job_lv__5CD6CB2B]
	DEFAULT ((10)) FOR [job_lvl]
GO
-- Add default constraint DF__employee__pub_id__5DCAEF64 to [dbo].[employee]
Print 'Add default constraint DF__employee__pub_id__5DCAEF64 to [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__pub_id__5DCAEF64]
	DEFAULT ('9952') FOR [pub_id]
GO
-- Add default constraint DF__employee__hire_d__5FB337D6 to [dbo].[employee]
Print 'Add default constraint DF__employee__hire_d__5FB337D6 to [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__hire_d__5FB337D6]
	DEFAULT (getdate()) FOR [hire_date]
GO
-- Create foreign key FK__employee__job_id__5BE2A6F2 on [dbo].[employee]
Print 'Create foreign key FK__employee__job_id__5BE2A6F2 on [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	WITH CHECK
	ADD CONSTRAINT [FK__employee__job_id__5BE2A6F2]
	FOREIGN KEY ([job_id]) REFERENCES [dbo].[jobs] ([job_id])
ALTER TABLE [dbo].[employee]
	CHECK CONSTRAINT [FK__employee__job_id__5BE2A6F2]

GO
-- Create foreign key FK__employee__pub_id__5EBF139D on [dbo].[employee]
Print 'Create foreign key FK__employee__pub_id__5EBF139D on [dbo].[employee]'
GO
ALTER TABLE [dbo].[employee]
	WITH CHECK
	ADD CONSTRAINT [FK__employee__pub_id__5EBF139D]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
ALTER TABLE [dbo].[employee]
	CHECK CONSTRAINT [FK__employee__pub_id__5EBF139D]

GO
-- Create index employee_ind on [dbo].[employee]
Print 'Create index employee_ind on [dbo].[employee]'
GO
CREATE CLUSTERED INDEX [employee_ind]
	ON [dbo].[employee] ([lname], [fname], [minit])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee] SET (LOCK_ESCALATION = TABLE)
GO
