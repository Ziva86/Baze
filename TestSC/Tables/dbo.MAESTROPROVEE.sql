SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAESTROPROVEE] (
		[MV_CODIGO]        [int] NOT NULL,
		[MA_CODIGO]        [int] NOT NULL,
		[MV_NOPART_PR]     [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PR_CODIGO]        [int] NOT NULL,
		[MV_PRINCIPAL]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MV_MINCANT]       [decimal](38, 6) NULL,
		[MV_COS_UNI]       [decimal](38, 6) NULL,
		[PA_CODIGO]        [int] NOT NULL,
		[MV_PES_UNIKG]     [decimal](38, 6) NULL,
		[MV_DEF_TIP]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SE_CODIGO]        [int] NULL,
		[SPI_CODIGO]       [int] NULL,
		CONSTRAINT [PK_MAESTROPROVEE]
		PRIMARY KEY
		NONCLUSTERED
		([MA_CODIGO], [PR_CODIGO], [PA_CODIGO], [MV_DEF_TIP])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[MAESTROPROVEE]
	ADD
	CONSTRAINT [DF_MAESTROPROVEE_MV_NOPART_PR]
	DEFAULT ('') FOR [MV_NOPART_PR]
GO
ALTER TABLE [dbo].[MAESTROPROVEE]
	ADD
	CONSTRAINT [DF_MAESTROPROVEE_PR_CODIGO]
	DEFAULT (0) FOR [PR_CODIGO]
GO
ALTER TABLE [dbo].[MAESTROPROVEE]
	ADD
	CONSTRAINT [DF_MAESTROPROVEE_PA_CODIGO]
	DEFAULT (233) FOR [PA_CODIGO]
GO
ALTER TABLE [dbo].[MAESTROPROVEE]
	ADD
	CONSTRAINT [DF_MAESTROPROVEE_MV_DEF_TIP]
	DEFAULT ('G') FOR [MV_DEF_TIP]
GO
ALTER TABLE [dbo].[MAESTROPROVEE] SET (LOCK_ESCALATION = TABLE)
GO
