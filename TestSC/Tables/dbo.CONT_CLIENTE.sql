SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONT_CLIENTE] (
		[CO_INDICE]            [int] IDENTITY(1, 1) NOT NULL,
		[CL_CODIGO]            [int] NOT NULL,
		[CO_NOMBRE]            [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_PUESTO]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_TEL1]              [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_EXT]               [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_FAX]               [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_CURP]              [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_EMAIL]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CO_PRINCIPAL]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CO_RADIOLOCALIZA]     [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [IX_CONT_CLIENTE]
		UNIQUE
		NONCLUSTERED
		([CO_INDICE])
		ON [PRIMARY],
		CONSTRAINT [PK_CONT_CLIENTE]
		PRIMARY KEY
		NONCLUSTERED
		([CL_CODIGO], [CO_NOMBRE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CONT_CLIENTE]
	ADD
	CONSTRAINT [DF_CONT_CLIENTE_CO_TEL1]
	DEFAULT ('') FOR [CO_TEL1]
GO
ALTER TABLE [dbo].[CONT_CLIENTE]
	ADD
	CONSTRAINT [DF_CONT_CLIENTE_CO_EXT]
	DEFAULT ('') FOR [CO_EXT]
GO
ALTER TABLE [dbo].[CONT_CLIENTE]
	ADD
	CONSTRAINT [DF_CONT_CLIENTE_CO_FAX]
	DEFAULT ('') FOR [CO_FAX]
GO
ALTER TABLE [dbo].[CONT_CLIENTE]
	ADD
	CONSTRAINT [DF_CONT_CLIENTE_CO_CURP]
	DEFAULT ('') FOR [CO_CURP]
GO
ALTER TABLE [dbo].[CONT_CLIENTE]
	ADD
	CONSTRAINT [DF_CONT_CLIENTE_CO_PRINCIPAL]
	DEFAULT ('N') FOR [CO_PRINCIPAL]
GO
ALTER TABLE [dbo].[CONT_CLIENTE] SET (LOCK_ESCALATION = TABLE)
GO
