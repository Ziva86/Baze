SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIGURADOCREVISA] (
		[CFR_CODIGO]        [int] IDENTITY(1, 1) NOT NULL,
		[CFR_DOCUMENTO]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFR_TIPO]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFR_REQUERIDO]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_CONFIGURADOCREVISA]
		UNIQUE
		NONCLUSTERED
		([CFR_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_CONFIGURADOCREVISA]
		PRIMARY KEY
		CLUSTERED
		([CFR_DOCUMENTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CONFIGURADOCREVISA]
	ADD
	CONSTRAINT [DF_CONFIGURADOCREVISA_CFR_TIPO]
	DEFAULT ('A') FOR [CFR_TIPO]
GO
ALTER TABLE [dbo].[CONFIGURADOCREVISA]
	ADD
	CONSTRAINT [DF_CONFIGURADOCREVISA_CFR_REQUERIDO]
	DEFAULT ('N') FOR [CFR_REQUERIDO]
GO
ALTER TABLE [dbo].[CONFIGURADOCREVISA] SET (LOCK_ESCALATION = TABLE)
GO
