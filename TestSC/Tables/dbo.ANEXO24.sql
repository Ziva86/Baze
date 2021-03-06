SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ANEXO24] (
		[MA_CODIGO]          [int] NOT NULL,
		[ANX_MATERIAL]       [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FUN_CODIGO]         [smallint] NULL,
		[ANX_LARGO]          [decimal](38, 6) NULL,
		[ANX_ANCHO]          [decimal](38, 6) NULL,
		[ANX_DIAME]          [decimal](38, 6) NULL,
		[ANX_ALTURA]         [decimal](38, 6) NULL,
		[ANX_VID_YEAR]       [int] NULL,
		[ANX_VID_MES]        [int] NULL,
		[ANX_VID_DIA]        [int] NULL,
		[ANX_STA_FIS]        [int] NULL,
		[ANX_CAS_NUM]        [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ANX_BASE_SECA]      [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ANX_CAP_EMP]        [decimal](38, 6) NULL,
		[TCA_CODIGO]         [smallint] NULL,
		[ANX_CONT_REG]       [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ANX_PLACAS_US]      [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ES_CODIGO]          [int] NULL,
		[MA_NOM_QUIM]        [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_NOMBREFIS]       [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_NAMEFIS]         [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PA_ORIGENFIS]       [int] NULL,
		[AR_IMPFOFIS]        [int] NOT NULL,
		[EQ_IMPFOFIS]        [decimal](28, 14) NOT NULL,
		[AR_EXPMXFIS]        [int] NOT NULL,
		[EQ_EXPMXFIS]        [decimal](28, 14) NOT NULL,
		[MA_GENERICOFIS]     [int] NOT NULL,
		[EQ_GENERICOFIS]     [decimal](28, 14) NOT NULL,
		CONSTRAINT [PK_ANEXO24]
		PRIMARY KEY
		CLUSTERED
		([MA_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_FUN_CODIGO]
	DEFAULT (0) FOR [FUN_CODIGO]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_LARGO]
	DEFAULT (0) FOR [ANX_LARGO]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_ANCHO]
	DEFAULT (0) FOR [ANX_ANCHO]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_DIAME]
	DEFAULT (0) FOR [ANX_DIAME]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_ALTURA]
	DEFAULT (0) FOR [ANX_ALTURA]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_VID_YEAR]
	DEFAULT (0) FOR [ANX_VID_YEAR]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_VID_MES]
	DEFAULT (0) FOR [ANX_VID_MES]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_VID_DIA]
	DEFAULT (0) FOR [ANX_VID_DIA]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_STA_FIS]
	DEFAULT (0) FOR [ANX_STA_FIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_ANX_CAP_EMP]
	DEFAULT (0) FOR [ANX_CAP_EMP]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_AR_IMPFOFIS]
	DEFAULT (0) FOR [AR_IMPFOFIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_EQ_IMPFOFIS]
	DEFAULT (1) FOR [EQ_IMPFOFIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_AR_EXPMXFIS]
	DEFAULT (0) FOR [AR_EXPMXFIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_EQ_EXPMXFIS]
	DEFAULT (1) FOR [EQ_EXPMXFIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_MA_GENERICOFIS]
	DEFAULT (0) FOR [MA_GENERICOFIS]
GO
ALTER TABLE [dbo].[ANEXO24]
	ADD
	CONSTRAINT [DF_ANEXO24_EQ_GENERICOFIS]
	DEFAULT (1) FOR [EQ_GENERICOFIS]
GO
ALTER TABLE [dbo].[ANEXO24] SET (LOCK_ESCALATION = TABLE)
GO
