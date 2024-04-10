SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMMINVCONTRIBUCION] (
		[IV_CODIGO]            [int] NOT NULL,
		[CON_CODIGO]           [int] NOT NULL,
		[IVC_CONTRIBPOR]       [decimal](38, 6) NOT NULL,
		[IVC_CONTRIBTOTUS]     [decimal](38, 6) NOT NULL,
		[IVC_TIPOVALOR]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_COMMINVCONTRIBUCION]
		PRIMARY KEY
		NONCLUSTERED
		([IV_CODIGO], [CON_CODIGO], [IVC_CONTRIBPOR])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[COMMINVCONTRIBUCION]
	ADD
	CONSTRAINT [DF_COMMINVCONTRIBUCION_IVC_CONTRIBPOR]
	DEFAULT ((-1)) FOR [IVC_CONTRIBPOR]
GO
ALTER TABLE [dbo].[COMMINVCONTRIBUCION]
	ADD
	CONSTRAINT [DF_COMMINVCONTRIBUCION_IVC_CONTRIBTOTUS]
	DEFAULT (0) FOR [IVC_CONTRIBTOTUS]
GO
ALTER TABLE [dbo].[COMMINVCONTRIBUCION] SET (LOCK_ESCALATION = TABLE)
GO