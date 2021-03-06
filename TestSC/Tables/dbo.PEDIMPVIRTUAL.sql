SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIMPVIRTUAL] (
		[PI_CODIGO]         [int] NOT NULL,
		[AD_CODIGO]         [int] NOT NULL,
		[PI_PATENTE]        [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_PEDVIRTUAL]     [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CP_CODIGO]         [int] NULL,
		[AR_CODIGO]         [int] NOT NULL,
		[PI_FECHA]          [datetime] NULL,
		[PI_CANTIDAD]       [decimal](38, 6) NULL,
		[ME_CODIGO]         [int] NOT NULL,
		CONSTRAINT [PK_PEDIMPVIRTUAL]
		PRIMARY KEY
		CLUSTERED
		([PI_CODIGO], [AD_CODIGO], [PI_PATENTE], [PI_PEDVIRTUAL], [AR_CODIGO], [ME_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[PEDIMPVIRTUAL] SET (LOCK_ESCALATION = TABLE)
GO
