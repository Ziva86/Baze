SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRANSMISIONREL] (
		[ET_CODIGO]      [int] NOT NULL,
		[TRM_CODIGO]     [int] NOT NULL,
		[TRL_TIPO]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_TRANSMISIONREL1]
		PRIMARY KEY
		NONCLUSTERED
		([ET_CODIGO], [TRM_CODIGO], [TRL_TIPO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TRANSMISIONREL]
	ADD
	CONSTRAINT [DF_TRANSMISIONREL_TRL_TIPO]
	DEFAULT ('N') FOR [TRL_TIPO]
GO
ALTER TABLE [dbo].[TRANSMISIONREL] SET (LOCK_ESCALATION = TABLE)
GO
