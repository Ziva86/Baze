SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDEXPDET_InformacionBaseParaCalcularPagoArt303] (
		[PI_CODIGO]                 [int] NOT NULL,
		[PID_INDICED]               [int] NOT NULL,
		[MA_CODIGO]                 [int] NOT NULL,
		[PID_NOPARTE]               [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_NOMBRE]                [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_NAME]                  [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_COS_UNI]               [decimal](38, 6) NOT NULL,
		[PID_COS_UNIADU]            [decimal](38, 6) NULL,
		[PID_COS_UNIGEN]            [decimal](38, 6) NOT NULL,
		[PID_COS_UNIVA]             [decimal](38, 6) NOT NULL,
		[PID_COS_UNIMATGRA]         [decimal](38, 6) NOT NULL,
		[PID_CANT]                  [decimal](38, 6) NOT NULL,
		[PID_CAN_AR]                [decimal](38, 6) NOT NULL,
		[PID_CAN_GEN]               [decimal](38, 6) NOT NULL,
		[PID_VAL_ADU]               [decimal](38, 6) NOT NULL,
		[PID_CTOT_DLS]              [decimal](38, 6) NOT NULL,
		[ME_CODIGO]                 [int] NULL,
		[ME_GENERICO]               [int] NULL,
		[PID_OBSERVA]               [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_GENERICO]               [int] NOT NULL,
		[EQ_GENERICO]               [decimal](28, 14) NOT NULL,
		[EQ_IMPMX]                  [decimal](28, 14) NOT NULL,
		[AR_IMPMX]                  [int] NOT NULL,
		[ME_ARIMPMX]                [int] NULL,
		[AR_EXPFO]                  [int] NOT NULL,
		[PID_RATEEXPFO]             [decimal](38, 6) NULL,
		[PID_SEC_IMP]               [smallint] NULL,
		[PID_DEF_TIP]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_POR_DEF]               [decimal](38, 6) NOT NULL,
		[CS_CODIGO]                 [smallint] NULL,
		[PID_KIT_POR]               [decimal](38, 6) NULL,
		[TI_CODIGO]                 [smallint] NOT NULL,
		[PA_ORIGEN]                 [int] NULL,
		[PA_PROCEDE]                [int] NULL,
		[SPI_CODIGO]                [smallint] NULL,
		[PR_CODIGO]                 [int] NULL,
		[PID_IMPRIMIR]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_GENERA_EMP]            [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PID_CANT_DESP]             [decimal](38, 6) NULL,
		[EQ_EXPFO]                  [decimal](28, 14) NOT NULL,
		[PIB_INDICEB]               [int] NULL,
		[PID_DESCARGABLE]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_MA_CODIGOPADREKIT]     [int] NULL,
		[TCO_CODIGO]                [smallint] NULL,
		[SE_CODIGO]                 [smallint] NULL,
		[PI_EXPBO]                  [int] NULL,
		[PID_REGIONFIN]             [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_PEDTRANS]              [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PID_FECHAPEDTRANS]         [datetime] NULL,
		[AD_TRANS]                  [int] NULL,
		[PID_PAGACONTRIB]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_NOPARTEAUX]            [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PID_INDICEDLIGA]           [int] NULL,
		[PID_ORD_COMP]              [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PID_CODIGOFACT]            [int] NULL,
		[PID_SECUENCIA]             [int] NULL,
		[PID_POSECUENCIA]           [smallint] NULL,
		[PID_INDICEDORIG]           [int] NULL,
		[PID_CTOT_MN]               [decimal](38, 6) NULL,
		[PID_GENERA_EMPDET]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PID_PEDF4ORIG]             [int] NULL,
		[PID_PES_UNIKG]             [decimal](38, 6) NULL,
		[PID_SERVICIO]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PG_CODIGO]                 [smallint] NULL,
		[CP_TRANS]                  [int] NULL
)
GO
ALTER TABLE [dbo].[PEDEXPDET_InformacionBaseParaCalcularPagoArt303] SET (LOCK_ESCALATION = TABLE)
GO
