SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LINEAPRODUC] (
		[LIN_CODIGO]     [int] IDENTITY(1, 1) NOT NULL,
		[LIN_NOMBRE]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LIN_DESC]       [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ARE_CODIGO]     [int] NULL,
		CONSTRAINT [IX_LINEAPRODUC]
		UNIQUE
		NONCLUSTERED
		([LIN_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_LINEAPRODUC]
		PRIMARY KEY
		CLUSTERED
		([LIN_NOMBRE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[LINEAPRODUC] SET (LOCK_ESCALATION = TABLE)
GO
