SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoSugerido] (
		[BSU_NOPARTE]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TipoSug]         [float] NULL
)
GO
ALTER TABLE [dbo].[TipoSugerido] SET (LOCK_ESCALATION = TABLE)
GO
