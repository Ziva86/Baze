SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TIPOREL] (
		[TI_CODIGO]     [int] NULL,
		[TIPO]          [int] NULL
)
GO
ALTER TABLE [dbo].[TIPOREL] SET (LOCK_ESCALATION = TABLE)
GO
