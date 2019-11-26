SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RELIDENTIFICATIPOTASA] (
		[IDE_CODIGO]      [int] NOT NULL,
		[RIT_DEF_TIP]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_RELIDENTIFICATIPOTASA]
		PRIMARY KEY
		NONCLUSTERED
		([IDE_CODIGO], [RIT_DEF_TIP])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[RELIDENTIFICATIPOTASA] SET (LOCK_ESCALATION = TABLE)
GO
