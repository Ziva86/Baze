SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANCODET] (
		[BAN_CODIGO]          [int] NOT NULL,
		[BAND_INDICED]        [int] NOT NULL,
		[BAND_CUENTABCO]      [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BAND_CUENTA]         [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BAND_TIPOCUENTA]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_BANCODET]
		UNIQUE
		NONCLUSTERED
		([BAND_INDICED])
		ON [PRIMARY],
		CONSTRAINT [PK_BANCODET]
		PRIMARY KEY
		NONCLUSTERED
		([BAN_CODIGO], [BAND_CUENTABCO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BANCODET]
	ADD
	CONSTRAINT [DF_BANCODET_BAND_TIPOCUENTA]
	DEFAULT ('U') FOR [BAND_TIPOCUENTA]
GO
ALTER TABLE [dbo].[BANCODET] SET (LOCK_ESCALATION = TABLE)
GO
