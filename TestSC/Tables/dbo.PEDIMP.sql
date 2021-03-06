SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIMP] (
		[PI_CODIGO]                      [int] NOT NULL,
		[PI_FOLIO]                       [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FC_CODIGO]                      [int] NULL,
		[PI_MOVIMIENTO]                  [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_TIPO]                        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CP_CODIGO]                      [smallint] NULL,
		[REG_CODIGO]                     [smallint] NULL,
		[PI_TIP_CAM]                     [decimal](38, 6) NULL,
		[PI_FMON_EXT]                    [decimal](38, 6) NOT NULL,
		[MT_CODIGO]                      [smallint] NULL,
		[PI_FRAN_INT]                    [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FEC_PAG]                     [datetime] NULL,
		[AD_DES]                         [int] NOT NULL,
		[AD_ORI]                         [int] NULL,
		[PI_FEC_ENT]                     [datetime] NULL,
		[PI_REEXPED]                     [decimal](38, 6) NULL,
		[PI_TRANSIT]                     [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_IN_DIR]                      [int] NULL,
		[CL_CODIGO]                      [int] NULL,
		[DI_CL]                          [int] NULL,
		[PR_CODIGO]                      [int] NULL,
		[DI_PR]                          [int] NULL,
		[PI_PESO]                        [decimal](38, 6) NULL,
		[PI_BULTO]                       [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FT_ADU]                      [decimal](38, 7) NOT NULL,
		[PI_TOTAL]                       [decimal](38, 6) NULL,
		[PI_FIRMA]                       [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AGT_CODIGO]                     [int] NOT NULL,
		[PI_OBSERVA]                     [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CP_RECTIFICA]                   [smallint] NULL,
		[PI_RECTIFICA]                   [int] NOT NULL,
		[PI_FEC_PAGR1]                   [datetime] NULL,
		[PI_RECTESTATUS]                 [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_SEM]                         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_ANEXOL]                      [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[US_CODIGO]                      [smallint] NULL,
		[PI_ESTATUS]                     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_ACTIVO_DESCARGA]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_AFECTADO]                    [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FECHAINI]                    [datetime] NULL,
		[PI_FECHAFIN]                    [datetime] NULL,
		[PI_OBSERVA_RECTIFICA]           [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_CONSOLIDA]                   [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FEC_CAMREG]                  [datetime] NULL,
		[ZO_CODIGO]                      [smallint] NULL,
		[PI_CAM_REG]                     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MT_SALIDA]                      [smallint] NULL,
		[MT_ARRIBO]                      [smallint] NULL,
		[MT_ABANDONA]                    [smallint] NULL,
		[TTA_CODIGO]                     [smallint] NULL,
		[AD_DESPACHO]                    [int] NULL,
		[PI_DEDUCIBLE]                   [decimal](38, 6) NULL,
		[PI_FEC_ACT_TIEMPO]              [smalldatetime] NULL,
		[PI_FOLIOPAGO]                   [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_CHEQUEPAGO]                  [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_COMPLEMEN]                   [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FECHAPAGO]                   [datetime] NULL,
		[PI_TIP_CAMPAGO]                 [decimal](38, 6) NOT NULL,
		[PI_PORCENNAFTA]                 [decimal](38, 6) NOT NULL,
		[PI_ADVMNIMPUSA]                 [decimal](38, 6) NOT NULL,
		[PI_ADVMNIMPMEX]                 [decimal](38, 6) NOT NULL,
		[PI_EXCENCION]                   [decimal](38, 6) NOT NULL,
		[PI_IMPORTECONTRSINRECARGOS]     [decimal](38, 6) NOT NULL,
		[PI_IMPORTECONTR]                [decimal](38, 6) NOT NULL,
		[PI_IMPORTECONTRUSD]             [decimal](38, 6) NULL,
		[PI_IMPORTERECARGOS]             [decimal](38, 6) NOT NULL,
		[PI_R1PEDAFECTADO]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_UPDATERECT]                  [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_COMPLEMENTA]                 [int] NOT NULL,
		[PI_BARCODE]                     [image] NULL,
		[PI_FIRMACOMPLEMEN]              [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_NUMVEHICULOS]                [int] NOT NULL,
		[PI_CAMREGTRANS]                 [int] NULL,
		[PI_WORIGENR1]                   [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BC_CODIGO]                      [int] NOT NULL,
		[PI_BARCODETEXT]                 [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_LIGACORRECTA]                [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_DESP_EQUIPO]                 [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FT_ACT]                      [decimal](38, 6) NOT NULL,
		[PI_CUENTADET]                   [int] NOT NULL,
		[PI_CUENTADETB]                  [int] NOT NULL,
		[PI_PAGADO]                      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FEC_ENTPED]                  [datetime] NULL,
		[PI_USA_TIP_CAMFACT]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TV_CODIGO]                      [int] NULL,
		[AGM_CODIGO]                     [int] NULL,
		[PI_PARTESAAI]                   [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AGT_FIRMA]                      [int] NULL,
		[PI_FIRMAELECTAVANZ]             [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_GENERASALDOF4]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_EDICIONDET]                  [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_PEDVIRTUAL]                  [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_CONCEPTOF4]                  [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_TIPOOPERA]                   [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_TIPOTRASLADO]                [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[DI_DEST_ORIGEN]                 [int] NULL,
		[PI_CONCILIADO]                  [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PI_FACTAGRU]                    [int] NOT NULL,
		[PI_USAFACTAGRU]                 [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_FEACODBARRAS]                [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_PEDIMP]
		UNIQUE
		NONCLUSTERED
		([PI_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_PEDIMP]
		PRIMARY KEY
		NONCLUSTERED
		([PI_FOLIO], [AD_DES], [AGT_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_MOVIMIENTO]
	DEFAULT ('E') FOR [PI_MOVIMIENTO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_TIPO]
	DEFAULT ('C') FOR [PI_TIPO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_TIP_CAM]
	DEFAULT (1) FOR [PI_TIP_CAM]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FMON_EXT]
	DEFAULT (1) FOR [PI_FMON_EXT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FRAN_INT]
	DEFAULT ('N') FOR [PI_FRAN_INT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_TRANSIT]
	DEFAULT ('') FOR [PI_TRANSIT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_BULTO]
	DEFAULT ('') FOR [PI_BULTO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FIRMA]
	DEFAULT ('') FOR [PI_FIRMA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_RECTIFICA]
	DEFAULT (0) FOR [PI_RECTIFICA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_RECTESTATUS]
	DEFAULT ('S') FOR [PI_RECTESTATUS]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_SEM]
	DEFAULT ('') FOR [PI_SEM]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FT_ADU]
	DEFAULT (1) FOR [PI_FT_ADU]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_ESTATUS]
	DEFAULT ('S') FOR [PI_ESTATUS]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_ACTIVO_DESCARGA]
	DEFAULT ('S') FOR [PI_ACTIVO_DESCARGA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_AFECTADO]
	DEFAULT ('N') FOR [PI_AFECTADO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_OBSERVA_RECTIFICA]
	DEFAULT ('') FOR [PI_OBSERVA_RECTIFICA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_CONSOLIDA]
	DEFAULT ('') FOR [PI_CONSOLIDA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_CAM_REG]
	DEFAULT ('N') FOR [PI_CAM_REG]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FOLIOPAGO]
	DEFAULT ('') FOR [PI_FOLIOPAGO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_CHEQUEPAGO]
	DEFAULT ('') FOR [PI_CHEQUEPAGO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_COMPLEMEN]
	DEFAULT ('') FOR [PI_COMPLEMEN]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_TIP_CAMPAGO]
	DEFAULT (1.0) FOR [PI_TIP_CAMPAGO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_PORCENNAFTA]
	DEFAULT (100) FOR [PI_PORCENNAFTA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_ADVMNIMPUSA]
	DEFAULT (0) FOR [PI_ADVMNIMPUSA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_ADVMNIMPMEX]
	DEFAULT (0) FOR [PI_ADVMNIMPMEX]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_EXCENCION]
	DEFAULT (0) FOR [PI_EXCENCION]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_IMPORTECONTRSINRECARGOS]
	DEFAULT (0) FOR [PI_IMPORTECONTRSINRECARGOS]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_IMPORTECONTR]
	DEFAULT (0) FOR [PI_IMPORTECONTR]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_IMPORTECONTRUSD]
	DEFAULT (0) FOR [PI_IMPORTECONTRUSD]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_IMPORTERECARGOS]
	DEFAULT (0) FOR [PI_IMPORTERECARGOS]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_R1PEDAFECTADO]
	DEFAULT ('N') FOR [PI_R1PEDAFECTADO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_UPDATERECT]
	DEFAULT ('S') FOR [PI_UPDATERECT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_COMPLEMENTA]
	DEFAULT ((-1)) FOR [PI_COMPLEMENTA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FIRMACOMPLEMEN]
	DEFAULT ('') FOR [PI_FIRMACOMPLEMEN]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_NUMVEHICULOS]
	DEFAULT (1) FOR [PI_NUMVEHICULOS]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_WORIGENR1]
	DEFAULT ('S') FOR [PI_WORIGENR1]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_BC_CODIGO]
	DEFAULT (0) FOR [BC_CODIGO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_LIGACORRECTA]
	DEFAULT ('S') FOR [PI_LIGACORRECTA]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_DESP_EQUIPO]
	DEFAULT ('N') FOR [PI_DESP_EQUIPO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FT_ACT]
	DEFAULT (1) FOR [PI_FT_ACT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_CUENTADET]
	DEFAULT (0) FOR [PI_CUENTADET]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_CUENTADETB]
	DEFAULT (0) FOR [PI_CUENTADETB]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_PAGADO]
	DEFAULT ('N') FOR [PI_PAGADO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_USA_TIP_CAMFACT]
	DEFAULT ('N') FOR [PI_USA_TIP_CAMFACT]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_TV_CODIGO]
	DEFAULT (2) FOR [TV_CODIGO]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_GENERASALDOF4]
	DEFAULT ('N') FOR [PI_GENERASALDOF4]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_EDICIONDET]
	DEFAULT ('N') FOR [PI_EDICIONDET]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_FACTAGRU]
	DEFAULT ((-1)) FOR [PI_FACTAGRU]
GO
ALTER TABLE [dbo].[PEDIMP]
	ADD
	CONSTRAINT [DF_PEDIMP_PI_USAFACTAGRU]
	DEFAULT ('N') FOR [PI_USAFACTAGRU]
GO
CREATE CLUSTERED INDEX [IX_PEDIMP_1]
	ON [dbo].[PEDIMP] ([PI_CODIGO], [PI_FOLIO], [AGT_CODIGO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_2]
	ON [dbo].[PEDIMP] ([PI_CODIGO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_3]
	ON [dbo].[PEDIMP] ([AGT_CODIGO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_4]
	ON [dbo].[PEDIMP] ([AD_DES])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_5]
	ON [dbo].[PEDIMP] ([CP_CODIGO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_6]
	ON [dbo].[PEDIMP] ([PI_CODIGO], [PI_MOVIMIENTO], [CP_CODIGO], [PI_FEC_ENT], [CP_RECTIFICA], [PI_ESTATUS], [PI_ACTIVO_DESCARGA], [PI_DESP_EQUIPO], [PI_FEC_ENTPED], [PI_GENERASALDOF4], [DI_DEST_ORIGEN])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_7]
	ON [dbo].[PEDIMP] ([CP_RECTIFICA])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_8]
	ON [dbo].[PEDIMP] ([PI_ESTATUS], [PI_CODIGO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_10]
	ON [dbo].[PEDIMP] ([PI_MOVIMIENTO], [PI_TIPO], [CP_CODIGO], [AGT_CODIGO], [PI_ESTATUS], [PI_CODIGO], [PI_FOLIO], [PI_TIP_CAM], [PI_FEC_PAG], [PI_FEC_ENT], [PI_COMPLEMEN], [PI_LIGACORRECTA], [PI_DESP_EQUIPO], [PI_PAGADO])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PEDIMP_9]
	ON [dbo].[PEDIMP] ([PI_CODIGO], [PI_MOVIMIENTO], [PI_TIP_CAM], [PI_FACTAGRU], [PI_USAFACTAGRU])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[PEDIMP] SET (LOCK_ESCALATION = TABLE)
GO
