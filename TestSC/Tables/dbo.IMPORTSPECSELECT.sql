SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMPORTSPECSELECT] (
		[IMS_CODIGO]           [int] NOT NULL,
		[IMS_CBFORMA]          [int] NULL,
		[IMF_CODIGO]           [int] NOT NULL,
		[IMC_SACARMAESTRO]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[IMC_SELECTMASTER]     [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_IMPORTSPECSELECT]
		PRIMARY KEY
		CLUSTERED
		([IMS_CODIGO], [IMF_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[IMPORTSPECSELECT]
	ADD
	CONSTRAINT [DF_IMPORTSPECSELECT_IMF_CODIGO]
	DEFAULT (0) FOR [IMF_CODIGO]
GO
ALTER TABLE [dbo].[IMPORTSPECSELECT] SET (LOCK_ESCALATION = TABLE)
GO