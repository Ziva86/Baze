SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUSQUEDAFILTRO_IN] (
		[BFI_CODIGO]       [int] NOT NULL,
		[BFL_ELEMENTO]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[BUSQUEDAFILTRO_IN] SET (LOCK_ESCALATION = TABLE)
GO
