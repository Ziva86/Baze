SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGISTROSIMPORTADOS] (
		[RI_REGISTRO]     [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RI_TIPO]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[RI_CBFORMA]      [int] NULL,
		[RI_USERID]       [int] NULL
)
GO
ALTER TABLE [dbo].[REGISTROSIMPORTADOS]
	ADD
	CONSTRAINT [DF_REGISTROSIMPORTADOS_RI_CBFORMA]
	DEFAULT (0) FOR [RI_CBFORMA]
GO
ALTER TABLE [dbo].[REGISTROSIMPORTADOS] SET (LOCK_ESCALATION = TABLE)
GO
