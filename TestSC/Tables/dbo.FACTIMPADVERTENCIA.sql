SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FACTIMPADVERTENCIA] (
		[FIN_CODIGO]        [int] IDENTITY(1, 1) NOT NULL,
		[FI_CODIGO]         [int] NOT NULL,
		[FI_COMENTARIO]     [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_FACTIMPADVERTENCIA]
		UNIQUE
		NONCLUSTERED
		([FIN_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FACTIMPADVERTENCIA] SET (LOCK_ESCALATION = TABLE)
GO
