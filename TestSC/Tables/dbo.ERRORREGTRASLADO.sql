SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ERRORREGTRASLADO] (
		[ET_TIPOREGISTRO]     [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ET_REGDESC]          [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_ERRORREGTRASLADO]
		PRIMARY KEY
		CLUSTERED
		([ET_TIPOREGISTRO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[ERRORREGTRASLADO] SET (LOCK_ESCALATION = TABLE)
GO