SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlntExpSeccFiltro_IN] (
		[PXSF_CODIGO]       [int] NOT NULL,
		[PXSF_ELEMENTO]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[PlntExpSeccFiltro_IN] SET (LOCK_ESCALATION = TABLE)
GO
