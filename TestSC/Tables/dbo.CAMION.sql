SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAMION] (
		[CA_CODIGO]      [int] IDENTITY(1, 1) NOT NULL,
		[CA_PLA_MX]      [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CA_PLA_US]      [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CA_DESC]        [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CA_MARCA]       [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CA_MODELO]      [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ES_CODIGO]      [int] NULL,
		[CHO_CODIGO]     [int] NULL,
		CONSTRAINT [IX_CAMION]
		UNIQUE
		NONCLUSTERED
		([CA_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_CAMION]
		PRIMARY KEY
		NONCLUSTERED
		([CA_DESC])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CAMION]
	ADD
	CONSTRAINT [DF_CAMION_CA_PLA_MX]
	DEFAULT ('') FOR [CA_PLA_MX]
GO
ALTER TABLE [dbo].[CAMION]
	ADD
	CONSTRAINT [DF_CAMION_CA_PLA_US]
	DEFAULT ('') FOR [CA_PLA_US]
GO
ALTER TABLE [dbo].[CAMION]
	ADD
	CONSTRAINT [DF_CAMION_CA_MARCA]
	DEFAULT ('') FOR [CA_MARCA]
GO
ALTER TABLE [dbo].[CAMION]
	ADD
	CONSTRAINT [DF_CAMION_CA_MODELO]
	DEFAULT ('') FOR [CA_MODELO]
GO
ALTER TABLE [dbo].[CAMION] SET (LOCK_ESCALATION = TABLE)
GO
