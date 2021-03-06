SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAESTROCOSTNVO] (
		[TCO_CODIGO]        [smallint] NOT NULL,
		[MA_CODIGO]         [int] NOT NULL,
		[MA_GRAV_MP]        [decimal](38, 6) NOT NULL,
		[MA_GRAV_ADD]       [decimal](38, 6) NOT NULL,
		[MA_GRAV_EMP]       [decimal](38, 6) NOT NULL,
		[MA_GRAV_GI]        [decimal](38, 6) NOT NULL,
		[MA_GRAV_GI_MX]     [decimal](38, 6) NOT NULL,
		[MA_GRAV_MO]        [decimal](38, 6) NOT NULL,
		[MA_NG_MP]          [decimal](38, 6) NOT NULL,
		[MA_NG_ADD]         [decimal](38, 6) NOT NULL,
		[MA_NG_EMP]         [decimal](38, 6) NOT NULL,
		[MA_COSTO]          [decimal](38, 6) NOT NULL,
		[MA_GRAVA_VA]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MA_NG_USA]         [decimal](38, 6) NOT NULL,
		[TV_CODIGO]         [int] NOT NULL,
		[DV_CODIGO]         [smallint] NULL,
		[SPI_CODIGO]        [int] NULL,
		[MA_PERINI]         [datetime] NULL,
		[MA_PERFIN]         [datetime] NULL,
		[MA_NG_MX]          [decimal](38, 6) NOT NULL
)
GO
ALTER TABLE [dbo].[MAESTROCOSTNVO] SET (LOCK_ESCALATION = TABLE)
GO
