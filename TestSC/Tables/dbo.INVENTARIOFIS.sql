SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVENTARIOFIS] (
		[IVF_CODIGO]            [int] NOT NULL,
		[IVF_REFERENCIA]        [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[IVF_FECHA]             [datetime] NOT NULL,
		[US_RESPONSABLE]        [int] NOT NULL,
		[US_CAPTURA]            [int] NULL,
		[ALM_CODIGO]            [int] NULL,
		[IVF_ESTATUS]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[IVF_MESREFERENCIA]     [datetime] NULL,
		[IVF_TIPO]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_INVENTARIOFIS]
		PRIMARY KEY
		NONCLUSTERED
		([IVF_REFERENCIA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[INVENTARIOFIS]
	ADD
	CONSTRAINT [DF_INVENTARIOFIS_IVF_ESTATUS]
	DEFAULT ('S') FOR [IVF_ESTATUS]
GO
ALTER TABLE [dbo].[INVENTARIOFIS]
	ADD
	CONSTRAINT [DF_INVENTARIOFIS_IVF_TIPO]
	DEFAULT ('N') FOR [IVF_TIPO]
GO
ALTER TABLE [dbo].[INVENTARIOFIS] SET (LOCK_ESCALATION = TABLE)
GO
