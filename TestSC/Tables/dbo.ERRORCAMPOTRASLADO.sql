SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ERRORCAMPOTRASLADO] (
		[ET_TIPOREGISTRO]     [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ET_CAMPO]            [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ET_DESCRIPCION]      [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ET_CAMPOTIPO]        [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ET_CAMPOSIZE]        [int] NULL,
		[ET_CAMPODEC]         [int] NULL,
		CONSTRAINT [PK_ERRORTRASLADO]
		PRIMARY KEY
		CLUSTERED
		([ET_TIPOREGISTRO], [ET_CAMPO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[ERRORCAMPOTRASLADO] SET (LOCK_ESCALATION = TABLE)
GO