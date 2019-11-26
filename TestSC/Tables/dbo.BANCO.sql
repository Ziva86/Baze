SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANCO] (
		[BAN_CODIGO]             [smallint] IDENTITY(1, 1) NOT NULL,
		[BAN_NOMBRE]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BAN_SUCURSAL]           [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BAN_CLAVECUENTAADU]     [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_BANCO]
		UNIQUE
		NONCLUSTERED
		([BAN_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_BANCO]
		PRIMARY KEY
		CLUSTERED
		([BAN_NOMBRE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BANCO] SET (LOCK_ESCALATION = TABLE)
GO
