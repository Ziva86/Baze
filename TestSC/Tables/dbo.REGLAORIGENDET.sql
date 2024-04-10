SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGLAORIGENDET] (
		[ARG_CODIGO]            [int] NOT NULL,
		[ARR_CODIGO]            [int] NOT NULL,
		[ARR_REGLA]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ARR_PARTIDASALTO]      [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ARR_PARTIDASALTOF]     [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ARR_OTRAPARTIDA]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ARG_VTMINIMO]          [decimal](38, 6) NULL,
		[ARG_CNMINIMO]          [decimal](38, 6) NULL,
		[ARG_USAMINIMIS]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_REGLAORIGENDET]
		PRIMARY KEY
		NONCLUSTERED
		([ARR_CODIGO], [ARR_REGLA], [ARR_PARTIDASALTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[REGLAORIGENDET]
	ADD
	CONSTRAINT [DF_REGLAORIGENDET_ARR_PARTIDASALTO]
	DEFAULT ('0') FOR [ARR_PARTIDASALTO]
GO
ALTER TABLE [dbo].[REGLAORIGENDET]
	ADD
	CONSTRAINT [DF_REGLAORIGENDET_ARR_PARTIDASALTOF]
	DEFAULT ('0') FOR [ARR_PARTIDASALTOF]
GO
ALTER TABLE [dbo].[REGLAORIGENDET]
	ADD
	CONSTRAINT [DF_REGLAORIGENDET_ARG_USAMINIMIS]
	DEFAULT ('S') FOR [ARG_USAMINIMIS]
GO
ALTER TABLE [dbo].[REGLAORIGENDET] SET (LOCK_ESCALATION = TABLE)
GO