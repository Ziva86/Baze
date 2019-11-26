SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TINBOND] (
		[TB_CODIGO]       [smallint] IDENTITY(1, 1) NOT NULL,
		[TB_CLAVE]        [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TB_DESC]         [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TB_CLAVEUSA]     [smallint] NULL,
		CONSTRAINT [IX_TINBOND]
		UNIQUE
		NONCLUSTERED
		([TB_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_TINBOND]
		PRIMARY KEY
		NONCLUSTERED
		([TB_CLAVE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TINBOND]
	ADD
	CONSTRAINT [DF_TINBOND_TB_DESC]
	DEFAULT ('') FOR [TB_DESC]
GO
ALTER TABLE [dbo].[TINBOND] SET (LOCK_ESCALATION = TABLE)
GO
