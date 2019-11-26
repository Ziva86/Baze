SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[configuratiempo_RespaldoAl20110309] (
		[CP_CODIGO]            [smallint] NOT NULL,
		[TI_CODIGO]            [smallint] NOT NULL,
		[COT_TIEMPO]           [int] NOT NULL,
		[COT_FECHAINICIAL]     [datetime] NOT NULL,
		[COT_FECHAFINAL]       [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[configuratiempo_RespaldoAl20110309] SET (LOCK_ESCALATION = TABLE)
GO
