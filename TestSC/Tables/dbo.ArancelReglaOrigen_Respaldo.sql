SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ArancelReglaOrigen_Respaldo] (
		[AR_CODIGO]      [int] NOT NULL,
		[ARR_CODIGO]     [int] NOT NULL
)
GO
ALTER TABLE [dbo].[ArancelReglaOrigen_Respaldo] SET (LOCK_ESCALATION = TABLE)
GO
