SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FORMULA] (
		[FOR_CODIGO]      [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FOR_NOMBRE]      [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FOR_FORMULA]     [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_FORMULA]
		PRIMARY KEY
		NONCLUSTERED
		([FOR_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FORMULA] SET (LOCK_ESCALATION = TABLE)
GO
