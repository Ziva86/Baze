SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[A17] (
		[A17_CODIGO]       [int] NOT NULL,
		[A17_FOLIO]        [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[A17_FECHAINI]     [datetime] NOT NULL,
		[A17_FECHAFIN]     [datetime] NOT NULL,
		[MA_FAMILIA]       [int] NOT NULL,
		[CL_EMPRESA]       [int] NOT NULL,
		CONSTRAINT [PK_A17]
		PRIMARY KEY
		NONCLUSTERED
		([A17_FECHAINI], [A17_FECHAFIN], [MA_FAMILIA])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[A17]
	ADD
	CONSTRAINT [DF_A17_CL_EMPRESA]
	DEFAULT (1) FOR [CL_EMPRESA]
GO
ALTER TABLE [dbo].[A17] SET (LOCK_ESCALATION = TABLE)
GO
