SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[impuestosgenerados] (
		[PIB_VAL_ADU]          [decimal](38, 6) NULL,
		[PIB_POR_DEF]          [decimal](38, 6) NULL,
		[PI_CODIGO]            [int] NOT NULL,
		[PIB_CONTRIBTOTMN]     [decimal](38, 6) NOT NULL,
		[CON_CODIGO]           [smallint] NOT NULL,
		[PIB_INDICEB]          [int] NOT NULL,
		[PIB_CODIGO]           [int] NOT NULL,
		[PG_CODIGO]            [smallint] NOT NULL
)
GO
ALTER TABLE [dbo].[impuestosgenerados] SET (LOCK_ESCALATION = TABLE)
GO
