SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENTSALALMSALDO] (
		[EN_CODIGO]            [int] NOT NULL,
		[END_INDICED]          [int] NOT NULL,
		[END_SALDOALM]         [decimal](38, 6) NOT NULL,
		[END_USO_SALDO]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[END_SALDOFE]          [decimal](38, 6) NOT NULL,
		[END_ENUSO]            [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[END_CANTALLOCATE]     [decimal](38, 6) NOT NULL,
		[END_USAALLOCATE]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ALM_ORIGEN]           [int] NULL,
		[ALM_DESTINO]          [int] NULL,
		[ALMD_PASILLO]         [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ALMD_NIVEL]           [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ALMD_LOCALIDAD]       [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_ENTSALALMSALDO]
		PRIMARY KEY
		CLUSTERED
		([END_INDICED])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_SALDOALM]
	DEFAULT (0) FOR [END_SALDOALM]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_USO_SALDO]
	DEFAULT ('N') FOR [END_USO_SALDO]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_SALDOFE]
	DEFAULT (0) FOR [END_SALDOFE]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_ENUSO]
	DEFAULT ('N') FOR [END_ENUSO]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_CANTALLOCATE]
	DEFAULT (0) FOR [END_CANTALLOCATE]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_END_USAALLOCATE]
	DEFAULT ('N') FOR [END_USAALLOCATE]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_ALM_ORIGEN]
	DEFAULT (0) FOR [ALM_ORIGEN]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_ALM_DESTINO]
	DEFAULT (0) FOR [ALM_DESTINO]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_ALMD_PASILLO]
	DEFAULT ('') FOR [ALMD_PASILLO]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_ALMD_NIVEL]
	DEFAULT ('') FOR [ALMD_NIVEL]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO]
	ADD
	CONSTRAINT [DF_ENTSALALMSALDO_ALMD_LOCALIDAD]
	DEFAULT ('') FOR [ALMD_LOCALIDAD]
GO
ALTER TABLE [dbo].[ENTSALALMSALDO] SET (LOCK_ESCALATION = TABLE)
GO
