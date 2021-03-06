SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARANCELCC] (
		[CODIGO]        [int] IDENTITY(1, 1) NOT NULL,
		[AR_CODIGO]     [int] NULL,
		[PRODUCTO]      [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PA_CODIGO]     [int] NULL,
		[EMPRESA]       [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CUOTA]         [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[TASA]          [decimal](38, 6) NULL,
		CONSTRAINT [IX_ARANCELCC]
		UNIQUE
		NONCLUSTERED
		([CODIGO])
		ON [PRIMARY]
)
GO
CREATE CLUSTERED INDEX [IX_ARANCELCC_1]
	ON [dbo].[ARANCELCC] ([AR_CODIGO], [CODIGO])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARANCELCC] SET (LOCK_ESCALATION = TABLE)
GO
