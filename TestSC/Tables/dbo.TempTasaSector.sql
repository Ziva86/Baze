SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TempTasaSector] (
		[AR_CODIGO]      [int] NOT NULL,
		[SA_PORCENT]     [decimal](38, 6) NULL,
		[SE_CODIGO]      [smallint] NOT NULL
)
GO
ALTER TABLE [dbo].[TempTasaSector] SET (LOCK_ESCALATION = TABLE)
GO
