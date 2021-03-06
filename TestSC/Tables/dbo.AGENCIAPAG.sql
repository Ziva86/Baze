SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AGENCIAPAG] (
		[AGP_CODIGO]             [int] NOT NULL,
		[AGP_FOLIO]              [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AG_CODIGO]              [int] NOT NULL,
		[AGP_FECHA]              [datetime] NOT NULL,
		[US_CODIGO]              [int] NULL,
		[AGP_TIP_CAM]            [decimal](38, 6) NOT NULL,
		[AGP_VALORPED]           [decimal](38, 6) NOT NULL,
		[AGP_TOTALCONTR]         [decimal](38, 6) NOT NULL,
		[AGP_TARIFAHONOR]        [decimal](38, 6) NOT NULL,
		[AGP_FRANJAAMA]          [decimal](38, 6) NOT NULL,
		[AGP_IVA]                [decimal](38, 6) NOT NULL,
		[AGP_ANTICIPO]           [decimal](38, 6) NOT NULL,
		[AGP_EXTRANJAGENCIA]     [decimal](38, 6) NOT NULL,
		[AGP_EXTRANJOTROS]       [decimal](38, 6) NOT NULL,
		[AGP_PAGADO]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AGP_FECHPAGO]           [decimal](38, 6) NULL,
		[AGP_DOCREF]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_AGENCIAPAG]
		PRIMARY KEY
		NONCLUSTERED
		([AGP_FOLIO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_TIP_CAM]
	DEFAULT (1) FOR [AGP_TIP_CAM]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_VALORPED]
	DEFAULT (0) FOR [AGP_VALORPED]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_TOTALCONTR]
	DEFAULT (0) FOR [AGP_TOTALCONTR]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_TARIFAHONOR]
	DEFAULT (0) FOR [AGP_TARIFAHONOR]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_FRANJAAMA]
	DEFAULT (0) FOR [AGP_FRANJAAMA]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_IVA]
	DEFAULT (0) FOR [AGP_IVA]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_ANTICIPO]
	DEFAULT (0) FOR [AGP_ANTICIPO]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_EXTRANJAGENCIA]
	DEFAULT (0) FOR [AGP_EXTRANJAGENCIA]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_EXTRANJOTROS]
	DEFAULT (0) FOR [AGP_EXTRANJOTROS]
GO
ALTER TABLE [dbo].[AGENCIAPAG]
	ADD
	CONSTRAINT [DF_AGENCIAPAG_AGP_PAGADO]
	DEFAULT ('N') FOR [AGP_PAGADO]
GO
ALTER TABLE [dbo].[AGENCIAPAG] SET (LOCK_ESCALATION = TABLE)
GO
