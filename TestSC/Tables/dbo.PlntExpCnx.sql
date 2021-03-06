SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlntExpCnx] (
		[PXC_CODIGO]          [int] NOT NULL,
		[PXP_CODIGO]          [int] NOT NULL,
		[PXC_NOMBRE]          [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXC_TIPOEMPRESA]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PXC_EMPRESA]         [int] NOT NULL,
		[PXC_RUTALOCAL]       [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_RUTATRIGGER]     [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_FTP]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_RUTAREMOTA]      [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_USERNAME]        [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_PASSWORD]        [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_FILENUMBER]      [int] NOT NULL,
		[PXC_UNE]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PXC_MODOCNX]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_PlntExpCnx]
		UNIQUE
		NONCLUSTERED
		([PXC_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_PlntExpCnx]
		PRIMARY KEY
		CLUSTERED
		([PXP_CODIGO], [PXC_NOMBRE], [PXC_TIPOEMPRESA], [PXC_EMPRESA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PlntExpCnx]
	ADD
	CONSTRAINT [DF_PlntExpCnx_PXC_MODOCNX]
	DEFAULT ('P') FOR [PXC_MODOCNX]
GO
ALTER TABLE [dbo].[PlntExpCnx]
	ADD
	CONSTRAINT [DF_PlntExpCnx_PXP_CODIGO]
	DEFAULT (0) FOR [PXP_CODIGO]
GO
ALTER TABLE [dbo].[PlntExpCnx]
	ADD
	CONSTRAINT [DF_PlntExpCnx_PXC_TIPOEMPRESA]
	DEFAULT ('A') FOR [PXC_TIPOEMPRESA]
GO
ALTER TABLE [dbo].[PlntExpCnx]
	ADD
	CONSTRAINT [DF_PlntExpCnx_PXC_EMPRESA]
	DEFAULT (0) FOR [PXC_EMPRESA]
GO
ALTER TABLE [dbo].[PlntExpCnx]
	ADD
	CONSTRAINT [DF_PlntExpCnx_PXC_FILENUMBER]
	DEFAULT (1) FOR [PXC_FILENUMBER]
GO
ALTER TABLE [dbo].[PlntExpCnx] SET (LOCK_ESCALATION = TABLE)
GO
