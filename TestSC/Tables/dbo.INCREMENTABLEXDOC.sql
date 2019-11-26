SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INCREMENTABLEXDOC] (
		[IC_CODIGO]         [smallint] NOT NULL,
		[TF_CODIGO]         [smallint] NOT NULL,
		[TQ_CODIGO]         [smallint] NOT NULL,
		[IC_PORCENTAJE]     [decimal](38, 6) NOT NULL,
		CONSTRAINT [PK_INCREMENTABLEXDOC]
		PRIMARY KEY
		CLUSTERED
		([IC_CODIGO], [TF_CODIGO], [TQ_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[INCREMENTABLEXDOC]
	ADD
	CONSTRAINT [DF_INCREMENTABLEXDOC_IC_PORCENTAJE]
	DEFAULT (0) FOR [IC_PORCENTAJE]
GO
ALTER TABLE [dbo].[INCREMENTABLEXDOC] SET (LOCK_ESCALATION = TABLE)
GO
