SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BUSQUEDAORDEN] (
		[BUO_CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[BUS_CODIGO]     [int] NOT NULL,
		[BUO_ORDEN]      [smallint] NOT NULL,
		[IMF_CODIGO]     [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[BUO_TIPO]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_BUSQUEDAORDEN]
		UNIQUE
		NONCLUSTERED
		([BUO_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_BUSQUEDAORDEN]
		PRIMARY KEY
		NONCLUSTERED
		([BUS_CODIGO], [IMF_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[BUSQUEDAORDEN]
	ADD
	CONSTRAINT [DF_BUSQUEDAORDEN_BUS_CODIGO]
	DEFAULT (0) FOR [BUS_CODIGO]
GO
ALTER TABLE [dbo].[BUSQUEDAORDEN]
	ADD
	CONSTRAINT [DF_BUSQUEDAORDEN_BUO_ORDEN]
	DEFAULT (0) FOR [BUO_ORDEN]
GO
ALTER TABLE [dbo].[BUSQUEDAORDEN]
	ADD
	CONSTRAINT [DF_BUSQUEDAORDEN_IMF_CODIGO]
	DEFAULT (0) FOR [IMF_CODIGO]
GO
ALTER TABLE [dbo].[BUSQUEDAORDEN]
	ADD
	CONSTRAINT [DF_BUSQUEDAORDEN_BUO_TIPO]
	DEFAULT ('A') FOR [BUO_TIPO]
GO
ALTER TABLE [dbo].[BUSQUEDAORDEN] SET (LOCK_ESCALATION = TABLE)
GO
