SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMPORTACION] (
		[IMP_CODIGO]       [int] IDENTITY(1, 1) NOT NULL,
		[IMP_TAG]          [int] NOT NULL,
		[IMP_ENUSO]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[IMP_NUMFORMA]     [int] NOT NULL,
		CONSTRAINT [IX_IMPORTACION]
		UNIQUE
		NONCLUSTERED
		([IMP_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_IMPORTACION]
		PRIMARY KEY
		CLUSTERED
		([IMP_TAG], [IMP_NUMFORMA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[IMPORTACION]
	ADD
	CONSTRAINT [DF_IMPORTACION_IMP_ENUSO]
	DEFAULT ('N') FOR [IMP_ENUSO]
GO
ALTER TABLE [dbo].[IMPORTACION]
	ADD
	CONSTRAINT [DF_IMPORTACION_IMP_NUMFORMA]
	DEFAULT ((-1)) FOR [IMP_NUMFORMA]
GO
ALTER TABLE [dbo].[IMPORTACION] SET (LOCK_ESCALATION = TABLE)
GO
