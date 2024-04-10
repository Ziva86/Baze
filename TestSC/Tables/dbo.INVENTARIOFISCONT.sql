SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVENTARIOFISCONT] (
		[IVF_CODIGO]       [int] NOT NULL,
		[IVFD_INDICED]     [int] NOT NULL,
		[IVFC_INDICEC]     [int] NOT NULL,
		[IVFC_MARCA]       [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IVFC_MODELO]      [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IVFC_SERIE]       [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_INVENTARIOFISCONT]
		PRIMARY KEY
		NONCLUSTERED
		([IVFC_INDICEC])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[INVENTARIOFISCONT] SET (LOCK_ESCALATION = TABLE)
GO