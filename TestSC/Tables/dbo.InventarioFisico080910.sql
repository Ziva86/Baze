SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventarioFisico080910] (
		[NoParte]             [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Tipo]                [smallint] NULL,
		[Grupo]               [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Descripcion]         [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CantidadGen]         [decimal](38, 6) NULL,
		[UMG]                 [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ValorDlls]           [decimal](38, 6) NULL,
		[Saldo]               [decimal](38, 6) NULL,
		[ValorSaldo]          [decimal](38, 6) NULL,
		[Inventario]          [decimal](38, 6) NULL,
		[ValorInventario]     [decimal](38, 6) NULL
)
GO
ALTER TABLE [dbo].[InventarioFisico080910] SET (LOCK_ESCALATION = TABLE)
GO
