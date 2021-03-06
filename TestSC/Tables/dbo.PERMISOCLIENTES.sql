SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERMISOCLIENTES] (
		[PE_CODIGO]            [int] NOT NULL,
		[PCL_REGISTROTIPO]     [smallint] NOT NULL,
		[CL_CODIGO]            [int] NOT NULL,
		[PR_CODIGO]            [int] NOT NULL,
		[DI_CODIGO]            [int] NULL,
		[DI_PROVEE]            [int] NULL,
		[PCL_TIPO]             [char](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PCL_TIP_PROG]         [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PCL_NO_PROG]          [int] NULL,
		CONSTRAINT [PK_PERMISOCLIENTES]
		PRIMARY KEY
		NONCLUSTERED
		([PE_CODIGO], [PCL_REGISTROTIPO], [CL_CODIGO], [PR_CODIGO])
	ON [PRIMARY]
)
GO
CREATE NONCLUSTERED INDEX [IX_PERMISOCLIENTES]
	ON [dbo].[PERMISOCLIENTES] ([PE_CODIGO])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERMISOCLIENTES] SET (LOCK_ESCALATION = TABLE)
GO
