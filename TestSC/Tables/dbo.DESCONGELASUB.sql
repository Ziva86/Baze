SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DESCONGELASUB] (
		[DOS_CODIGO]      [int] IDENTITY(1, 1) NOT NULL,
		[FI_CODIGO]       [int] NULL,
		[FID_INDICED]     [int] NULL,
		[PID_INDICED]     [int] NULL,
		[DOS_CANT]        [decimal](38, 6) NULL,
		CONSTRAINT [IX_DESCONGELASUB]
		UNIQUE
		NONCLUSTERED
		([DOS_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DESCONGELASUB] SET (LOCK_ESCALATION = TABLE)
GO
