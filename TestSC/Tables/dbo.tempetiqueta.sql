SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tempetiqueta] (
		[eti_codigo]     [int] IDENTITY(1, 1) NOT NULL,
		[eti_fast]       [int] NULL,
		CONSTRAINT [IX_tempetiqueta]
		UNIQUE
		NONCLUSTERED
		([eti_codigo])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[tempetiqueta] SET (LOCK_ESCALATION = TABLE)
GO
