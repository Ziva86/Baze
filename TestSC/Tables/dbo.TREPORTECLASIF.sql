SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TREPORTECLASIF] (
		[CR_Codigo]          [int] IDENTITY(1, 1) NOT NULL,
		[CR_Descripcion]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CR_Description]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CR_FORMA]           [int] NOT NULL,
		[CR_PRINCIPAL]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CR_IMPRESION]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_TREPORTECLASIF]
		UNIQUE
		NONCLUSTERED
		([CR_Codigo])
		ON [PRIMARY],
		CONSTRAINT [PK_TREPORTECLASIF]
		PRIMARY KEY
		NONCLUSTERED
		([CR_Descripcion], [CR_FORMA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TREPORTECLASIF]
	ADD
	CONSTRAINT [DF__TREPORTEC__CR_PR__6F4C17CF]
	DEFAULT ('N') FOR [CR_PRINCIPAL]
GO
ALTER TABLE [dbo].[TREPORTECLASIF] SET (LOCK_ESCALATION = TABLE)
GO