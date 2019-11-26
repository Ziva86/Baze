SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRANSMISIONDET] (
		[TRMD_INDICED]        [int] IDENTITY(1, 1) NOT NULL,
		[TRM_CODIGO]          [int] NOT NULL,
		[TRMD_NOMBREARCH]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TRMD_TIPO]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TRMD_FECHAHORA]      [datetime] NOT NULL,
		[TRMD_ESTATUS]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[US_CODIGO]           [int] NULL,
		[TRMD_TIPOSAAI]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_TRANSMISIONDET]
		UNIQUE
		NONCLUSTERED
		([TRMD_INDICED])
		ON [PRIMARY],
		CONSTRAINT [PK_TRANSMISIONDET]
		PRIMARY KEY
		CLUSTERED
		([TRM_CODIGO], [TRMD_NOMBREARCH], [TRMD_FECHAHORA], [TRMD_ESTATUS])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[TRANSMISIONDET] SET (LOCK_ESCALATION = TABLE)
GO
