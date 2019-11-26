SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AnalisisTipoMayo09] (
		[Padre]         [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TipoPadre]     [int] NOT NULL,
		[Hijo]          [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TipoHijo]      [int] NOT NULL
)
GO
ALTER TABLE [dbo].[AnalisisTipoMayo09] SET (LOCK_ESCALATION = TABLE)
GO
