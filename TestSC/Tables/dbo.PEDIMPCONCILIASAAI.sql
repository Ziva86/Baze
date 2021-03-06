SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIMPCONCILIASAAI] (
		[PI_CODIGO]             [int] NOT NULL,
		[PIA_CONCILIADO]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PIA_FECHA]             [datetime] NULL,
		[PIA_OBSERVACIONES]     [varchar](1100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PIA_CONCILIADOR]       [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_PEDIMPCONCILIASAAI]
		PRIMARY KEY
		CLUSTERED
		([PI_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PEDIMPCONCILIASAAI] SET (LOCK_ESCALATION = TABLE)
GO
