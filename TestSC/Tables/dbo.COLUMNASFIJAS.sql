SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[COLUMNASFIJAS] (
		[CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[ORDEN]      [int] NOT NULL,
		[ANCHO]      [int] NOT NULL,
		CONSTRAINT [IX_COLUMNASFIJAS]
		UNIQUE
		NONCLUSTERED
		([CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[COLUMNASFIJAS]
	ADD
	CONSTRAINT [DF_COLUMNASFIJAS_ANCHO]
	DEFAULT (0) FOR [ANCHO]
GO
ALTER TABLE [dbo].[COLUMNASFIJAS] SET (LOCK_ESCALATION = TABLE)
GO