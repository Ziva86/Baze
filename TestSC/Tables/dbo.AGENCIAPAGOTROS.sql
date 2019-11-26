SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AGENCIAPAGOTROS] (
		[AGO_INDICED]     [int] IDENTITY(1, 1) NOT NULL,
		[AGP_CODIGO]      [int] NOT NULL,
		[AGO_RUBRO]       [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AGO_VALOR]       [decimal](38, 6) NOT NULL,
		CONSTRAINT [IX_AGENCIAPAGOTROS]
		UNIQUE
		NONCLUSTERED
		([AGO_INDICED])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[AGENCIAPAGOTROS]
	ADD
	CONSTRAINT [DF_AGENCIAPAGOTROS_AGO_VALOR]
	DEFAULT (0) FOR [AGO_VALOR]
GO
ALTER TABLE [dbo].[AGENCIAPAGOTROS] SET (LOCK_ESCALATION = TABLE)
GO
