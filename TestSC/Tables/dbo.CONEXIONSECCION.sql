SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONEXIONSECCION] (
		[ARN_CODIGO]           [int] IDENTITY(1, 1) NOT NULL,
		[ARC_CODIGO]           [int] NOT NULL,
		[ARN_SECCION]          [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ARN_PREFIJOLINEA]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ARN_VALORPREFIJO]     [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ARN_ORDENSECCION]     [int] NULL,
		[ARN_QUERY]            [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_CONEXIONSECCION]
		UNIQUE
		NONCLUSTERED
		([ARN_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_CONEXIONSECCION]
		PRIMARY KEY
		NONCLUSTERED
		([ARC_CODIGO], [ARN_SECCION])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CONEXIONSECCION]
	ADD
	CONSTRAINT [DF_CONEXIONSECCION_ARN_PREFIJOLINEA]
	DEFAULT ('N') FOR [ARN_PREFIJOLINEA]
GO
ALTER TABLE [dbo].[CONEXIONSECCION] SET (LOCK_ESCALATION = TABLE)
GO
