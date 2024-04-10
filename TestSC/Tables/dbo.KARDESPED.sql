SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KARDESPED] (
		[KAP_CODIGO]                [int] NOT NULL,
		[KAP_FACTRANS]              [int] NULL,
		[KAP_INDICED_FACT]          [int] NULL,
		[KAP_INDICED_PED]           [int] NULL,
		[MA_HIJO]                   [int] NULL,
		[KAP_ESTATUS]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[KAP_CANTDESC]              [decimal](38, 6) NULL,
		[KAP_CantTotADescargar]     [decimal](38, 6) NULL,
		[KAP_Saldo_FED]             [decimal](38, 6) NULL,
		[KAP_PADRESUST]             [int] NULL,
		[KAP_CONTESTATUS]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[KAP_Tipo_Desc]             [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[KAP_FisComp]               [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[KAP_PadreMain]             [int] NULL,
		CONSTRAINT [IX_KARDESPED]
		UNIQUE
		NONCLUSTERED
		([KAP_CODIGO])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[KARDESPED]
	ADD
	CONSTRAINT [DF__KarDesPed__KAP_F__49C9CB8F]
	DEFAULT ('N') FOR [KAP_FisComp]
GO
ALTER TABLE [dbo].[KARDESPED]
	ADD
	CONSTRAINT [DF__KarDesPed__KAP_P__4ABDEFC8]
	DEFAULT (0) FOR [KAP_PadreMain]
GO
CREATE CLUSTERED INDEX [IX_KARDESPED_1]
	ON [dbo].[KARDESPED] ([KAP_FACTRANS], [KAP_INDICED_FACT])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_6]
	ON [dbo].[KARDESPED] ([KAP_CODIGO], [KAP_INDICED_PED])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_7]
	ON [dbo].[KARDESPED] ([KAP_INDICED_PED], [KAP_CANTDESC])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_2]
	ON [dbo].[KARDESPED] ([KAP_INDICED_PED])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_3]
	ON [dbo].[KARDESPED] ([KAP_INDICED_FACT])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_4]
	ON [dbo].[KARDESPED] ([KAP_FACTRANS])
	ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_KARDESPED_5]
	ON [dbo].[KARDESPED] ([MA_HIJO])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[KARDESPED] SET (LOCK_ESCALATION = TABLE)
GO