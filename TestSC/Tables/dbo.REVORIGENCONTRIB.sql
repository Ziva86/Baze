SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[REVORIGENCONTRIB] (
		[RVC_CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[FI_CODIGO]      [int] NOT NULL,
		[CON_CODIGO]     [smallint] NOT NULL,
		[RVC_MONTO]      [decimal](38, 6) NOT NULL,
		CONSTRAINT [IX_REVORIGENCONTRIB]
		UNIQUE
		NONCLUSTERED
		([RVC_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_REVORIGENCONTRIB]
		PRIMARY KEY
		NONCLUSTERED
		([FI_CODIGO], [CON_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[REVORIGENCONTRIB] SET (LOCK_ESCALATION = TABLE)
GO
