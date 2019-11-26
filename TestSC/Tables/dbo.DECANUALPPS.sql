SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DECANUALPPS] (
		[DAP_CODIGO]                      [int] NOT NULL,
		[DAP_INICIO]                      [datetime] NOT NULL,
		[DAP_FINAL]                       [datetime] NOT NULL,
		[CL_CODIGO]                       [int] NOT NULL,
		[DAP_VENTASTOT]                   [decimal](38, 6) NOT NULL,
		[DAP_VENTASPROD]                  [decimal](38, 6) NOT NULL,
		[DAP_VENTASMDONAC]                [decimal](38, 6) NOT NULL,
		[DAP_VENTASUNIDEXP]               [decimal](38, 6) NOT NULL,
		[DAP_INVENTARIOCOMP]              [decimal](38, 6) NOT NULL,
		[DAP_INVENTARIOPT]                [decimal](38, 6) NOT NULL,
		[DAP_IMPTEMPACTFIJUSD]            [decimal](38, 6) NOT NULL,
		[DAP_IMPTEMPACTFIJ]               [decimal](38, 6) NOT NULL,
		[DAP_IMPTEMPMATUSD]               [decimal](38, 6) NOT NULL,
		[DAP_IMPTEMPMAT]                  [decimal](38, 6) NOT NULL,
		[DAP_IMPDEFINITIVASACTFIJUSD]     [decimal](38, 6) NOT NULL,
		[DAP_IMPDEFINITIVASACTFIJ]        [decimal](38, 6) NOT NULL,
		[DAP_IMPDEFINITIVASMATUSD]        [decimal](38, 6) NOT NULL,
		[DAP_IMPDEFINITIVASMAT]           [decimal](38, 6) NOT NULL,
		[DAP_MERCADONACACTFIJUSD]         [decimal](38, 6) NOT NULL,
		[DAP_MERCADONACACTFIJ]            [decimal](38, 6) NOT NULL,
		[DAP_MERCADONACMATUSD]            [decimal](38, 6) NOT NULL,
		[DAP_MERCADONACMAT]               [decimal](38, 6) NOT NULL,
		[DAP_EDOFINANISR]                 [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DAP_PEDIMPDEFACTFIJ]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DAP_PEDIMPDEFMAT]                [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DAP_PEDIMPTEMPACTFIJ]            [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DAP_PEDIMPTEMPMAT]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DAP_RELCLIENTES]                 [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_DECANUALPPS]
		PRIMARY KEY
		NONCLUSTERED
		([DAP_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_CL_CODIGO]
	DEFAULT (1) FOR [CL_CODIGO]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_VENTASTOT]
	DEFAULT (0) FOR [DAP_VENTASTOT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_VENTASPROD]
	DEFAULT (0) FOR [DAP_VENTASPROD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_VENTASMDONAC]
	DEFAULT (0) FOR [DAP_VENTASMDONAC]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_VENTASUNIDEXP]
	DEFAULT (0) FOR [DAP_VENTASUNIDEXP]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_INVENTARIOCOMP]
	DEFAULT (0) FOR [DAP_INVENTARIOCOMP]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_INVENTARIOPT]
	DEFAULT (0) FOR [DAP_INVENTARIOPT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPTEMPACTFIJUSD]
	DEFAULT (0) FOR [DAP_IMPTEMPACTFIJUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPTEMPACTFIJ]
	DEFAULT (0) FOR [DAP_IMPTEMPACTFIJ]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPTEMPMATUSD]
	DEFAULT (0) FOR [DAP_IMPTEMPMATUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPTEMPMAT]
	DEFAULT (0) FOR [DAP_IMPTEMPMAT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPDEFINITIVASACTFIJUSD]
	DEFAULT (0) FOR [DAP_IMPDEFINITIVASACTFIJUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPDEFINITIVASACTFIJ]
	DEFAULT (0) FOR [DAP_IMPDEFINITIVASACTFIJ]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPDEFINITIVASMATUSD]
	DEFAULT (0) FOR [DAP_IMPDEFINITIVASMATUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_IMPDEFINITIVASMAT]
	DEFAULT (0) FOR [DAP_IMPDEFINITIVASMAT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_MERCADONACACTFIJUSD]
	DEFAULT (0) FOR [DAP_MERCADONACACTFIJUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_MERCADONACACTFIJ]
	DEFAULT (0) FOR [DAP_MERCADONACACTFIJ]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_MERCADONACMATUSD]
	DEFAULT (0) FOR [DAP_MERCADONACMATUSD]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_MERCADONACMAT]
	DEFAULT (0) FOR [DAP_MERCADONACMAT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_EDOFINANISR]
	DEFAULT ('N') FOR [DAP_EDOFINANISR]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_PEDIMPDEFACTFIJ]
	DEFAULT ('N') FOR [DAP_PEDIMPDEFACTFIJ]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_PEDIMPDEFMAT]
	DEFAULT ('N') FOR [DAP_PEDIMPDEFMAT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_PEDIMPTEMPACTFIJ]
	DEFAULT ('N') FOR [DAP_PEDIMPTEMPACTFIJ]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_PEDIMPTEMPMAT]
	DEFAULT ('N') FOR [DAP_PEDIMPTEMPMAT]
GO
ALTER TABLE [dbo].[DECANUALPPS]
	ADD
	CONSTRAINT [DF_DECANUALPPS_DAP_RELCLIENTES]
	DEFAULT ('N') FOR [DAP_RELCLIENTES]
GO
ALTER TABLE [dbo].[DECANUALPPS] SET (LOCK_ESCALATION = TABLE)
GO
