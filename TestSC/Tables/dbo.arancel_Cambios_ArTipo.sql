SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[arancel_Cambios_ArTipo] (
		[AR_CODIGO]            [int] NOT NULL,
		[AR_FRACCION]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_DIGITO]            [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_OFICIAL]           [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_USO]               [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CS_CODIGO]            [smallint] NULL,
		[AR_TIPO]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_TIPOREG]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_LN_DESC]           [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RA_CODIGO]            [int] NULL,
		[PA_CODIGO]            [int] NOT NULL,
		[ME_CODIGO]            [int] NOT NULL,
		[ME_CODIGO2]           [int] NULL,
		[VI_CODIGO]            [smallint] NULL,
		[TV_CODIGO]            [smallint] NULL,
		[AR_ESTADO]            [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_FEC_REV]           [datetime] NULL,
		[AR_PERINI]            [datetime] NOT NULL,
		[AR_PERFIN]            [datetime] NOT NULL,
		[AR_OBSERVA]           [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PG_ADV]               [smallint] NULL,
		[PG_BEN]               [smallint] NULL,
		[PG_CUOTA]             [smallint] NULL,
		[PG_IVA]               [smallint] NULL,
		[PG_IEPS]              [smallint] NULL,
		[PG_ISAN]              [smallint] NULL,
		[AR_TIPOIMPUESTO]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_CANTUMESP]         [decimal](38, 6) NULL,
		[AR_ESPEC]             [decimal](38, 6) NULL,
		[AR_PORCENT_8VA]       [decimal](38, 6) NOT NULL,
		[AR_ADVDEF]            [decimal](38, 6) NOT NULL,
		[AR_CUOTA]             [decimal](38, 6) NULL,
		[AR_IVA]               [decimal](38, 6) NOT NULL,
		[AR_IVAFRANJA]         [decimal](38, 6) NOT NULL,
		[AR_IEPS]              [decimal](38, 6) NULL,
		[AR_ISAN]              [decimal](38, 6) NULL,
		[ARR_CODIGO]           [int] NULL,
		[AR_CAPITULO]          [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AR_DESCCAPITULO]      [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AR_PARTIDA]           [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AR_DESCPARTIDA]       [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[AR_FECHAREVISION]     [datetime] NOT NULL,
		[AR_OBSOLETA]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_PAGAISAN]          [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AR_ULTMODIFTIGIE]     [datetime] NULL,
		[AR_ADVFRONTERA]       [decimal](38, 6) NOT NULL
)
GO
ALTER TABLE [dbo].[arancel_Cambios_ArTipo] SET (LOCK_ESCALATION = TABLE)
GO