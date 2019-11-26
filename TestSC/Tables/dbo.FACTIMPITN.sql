SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FACTIMPITN] (
		[FI_CODIGO]       [int] NOT NULL,
		[ITN_BARCODE]     [image] NULL,
		[ITN_TIPO]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ITN_TEXTO]       [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_FACTIMPITN]
		PRIMARY KEY
		CLUSTERED
		([FI_CODIGO], [ITN_TEXTO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FACTIMPITN] SET (LOCK_ESCALATION = TABLE)
GO
