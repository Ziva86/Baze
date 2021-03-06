SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIMPRELTRANS] (
		[RET_CODIGO]       [int] IDENTITY(1, 1) NOT NULL,
		[PID_INDICED]      [int] NOT NULL,
		[FED_INDICED]      [int] NOT NULL,
		[RET_CANTDESC]     [decimal](38, 6) NOT NULL,
		[RET_ESTATUS]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_PEDIMPRELTRANS]
		UNIQUE
		NONCLUSTERED
		([RET_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PEDIMPRELTRANS]
	ADD
	CONSTRAINT [DF_PEDIMPRELTRANS_RET_CANTDESC]
	DEFAULT (0) FOR [RET_CANTDESC]
GO
ALTER TABLE [dbo].[PEDIMPRELTRANS] SET (LOCK_ESCALATION = TABLE)
GO
