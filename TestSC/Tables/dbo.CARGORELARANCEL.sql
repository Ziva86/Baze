SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CARGORELARANCEL] (
		[CRE_INDICED]     [int] IDENTITY(1, 1) NOT NULL,
		[CAR_CODIGO]      [int] NOT NULL,
		[CL_CODIGO]       [int] NOT NULL,
		[AR_CODIGO]       [int] NOT NULL,
		[LIN_CODIGO]      [int] NOT NULL,
		CONSTRAINT [IX_CARGORELARANCEL]
		UNIQUE
		NONCLUSTERED
		([CRE_INDICED])
		ON [PRIMARY],
		CONSTRAINT [PK_CARGORELARANCEL]
		PRIMARY KEY
		CLUSTERED
		([CAR_CODIGO], [CL_CODIGO], [AR_CODIGO], [LIN_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CARGORELARANCEL]
	ADD
	CONSTRAINT [DF_CARGORELARANCEL_CL_CODIGO]
	DEFAULT (0) FOR [CL_CODIGO]
GO
ALTER TABLE [dbo].[CARGORELARANCEL]
	ADD
	CONSTRAINT [DF_CARGORELARANCEL_AR_CODIGO]
	DEFAULT (0) FOR [AR_CODIGO]
GO
ALTER TABLE [dbo].[CARGORELARANCEL]
	ADD
	CONSTRAINT [DF_CARGORELARANCEL_LIN_CODIGO]
	DEFAULT (0) FOR [LIN_CODIGO]
GO
ALTER TABLE [dbo].[CARGORELARANCEL] SET (LOCK_ESCALATION = TABLE)
GO
