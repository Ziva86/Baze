SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMPLEMENTAPEDIMP] (
		[PI_CODIGOIMP]     [int] IDENTITY(1, 1) NOT NULL,
		[PI_FECHA]         [datetime] NOT NULL,
		[PI_FOLIO]         [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PI_TIP_CAM]       [decimal](38, 6) NOT NULL,
		[AGT_CODIGO]       [smallint] NOT NULL,
		[AD_CODIGO]        [int] NOT NULL,
		[PR_CODIGO]        [int] NULL,
		[CL_CODIGO]        [int] NULL,
		[CP_CODIGO]        [smallint] NOT NULL,
		CONSTRAINT [IX_IMPLEMENTAPEDIMP]
		UNIQUE
		NONCLUSTERED
		([PI_CODIGOIMP])
		ON [PRIMARY],
		CONSTRAINT [PK_IMPLEMENTA]
		PRIMARY KEY
		NONCLUSTERED
		([PI_FOLIO], [AGT_CODIGO])
	ON [PRIMARY]
)
GO
EXEC sp_addextendedproperty N'MS_Description', N'vbggb', 'SCHEMA', N'dbo', 'TABLE', N'IMPLEMENTAPEDIMP', NULL, NULL
GO
ALTER TABLE [dbo].[IMPLEMENTAPEDIMP] SET (LOCK_ESCALATION = TABLE)
GO
