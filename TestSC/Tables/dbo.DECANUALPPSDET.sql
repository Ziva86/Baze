SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DECANUALPPSDET] (
		[DAP_CODIGO]           [int] NOT NULL,
		[DAPD_INDICED]         [int] IDENTITY(1, 1) NOT NULL,
		[MA_GENERICO]          [int] NOT NULL,
		[DAPD_NOMBRE]          [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SE_CODIGO]            [smallint] NOT NULL,
		[AR_CODIGO]            [int] NOT NULL,
		[ME_AR]                [smallint] NOT NULL,
		[DAPD_TOTALBIENES]     [decimal](38, 6) NOT NULL,
		[DAPD_MDONAC]          [decimal](38, 6) NOT NULL,
		[DAPD_EXPORT]          [decimal](38, 6) NOT NULL,
		[DAPD_INVENTARIO]      [decimal](38, 6) NOT NULL,
		[DAPD_VALORMN]         [decimal](38, 6) NOT NULL,
		[DAPD_CAPACIDAD]       [decimal](38, 6) NOT NULL,
		CONSTRAINT [IX_DECANUALPPSDET]
		UNIQUE
		NONCLUSTERED
		([DAPD_INDICED])
		ON [PRIMARY],
		CONSTRAINT [PK_DECANUALPPSDET]
		PRIMARY KEY
		NONCLUSTERED
		([DAP_CODIGO], [DAPD_INDICED])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_NOMBRE]
	DEFAULT ('') FOR [DAPD_NOMBRE]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_SE_CODIGO]
	DEFAULT (0) FOR [SE_CODIGO]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_AR_CODIGO]
	DEFAULT (0) FOR [AR_CODIGO]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_ME_AR]
	DEFAULT (0) FOR [ME_AR]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_TOTALBIENES]
	DEFAULT (0) FOR [DAPD_TOTALBIENES]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_MDONAC]
	DEFAULT (0) FOR [DAPD_MDONAC]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_EXPORT]
	DEFAULT (0) FOR [DAPD_EXPORT]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_INVENTARIO]
	DEFAULT (0) FOR [DAPD_INVENTARIO]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_VALORMN]
	DEFAULT (0) FOR [DAPD_VALORMN]
GO
ALTER TABLE [dbo].[DECANUALPPSDET]
	ADD
	CONSTRAINT [DF_DECANUALPPSDET_DAPD_CAPACIDAD]
	DEFAULT (0) FOR [DAPD_CAPACIDAD]
GO
ALTER TABLE [dbo].[DECANUALPPSDET] SET (LOCK_ESCALATION = TABLE)
GO
