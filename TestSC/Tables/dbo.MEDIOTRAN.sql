SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEDIOTRAN] (
		[MT_CODIGO]      [smallint] IDENTITY(1, 1) NOT NULL,
		[MT_NOMBRE]      [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MT_NAME]        [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MT_CLA_PED]     [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MT_CLA_USA]     [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_MEDIOTRAN]
		UNIQUE
		NONCLUSTERED
		([MT_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_MEDIOTRAN]
		PRIMARY KEY
		NONCLUSTERED
		([MT_NOMBRE], [MT_NAME])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[MEDIOTRAN] SET (LOCK_ESCALATION = TABLE)
GO
