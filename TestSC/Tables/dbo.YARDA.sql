SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YARDA] (
		[YA_CODIGO]        [int] IDENTITY(1, 1) NOT NULL,
		[YA_CLAVE]         [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[YA_UBICA]         [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[YA_CAPACIDAD]     [int] NULL,
		CONSTRAINT [IX_YARDA]
		UNIQUE
		NONCLUSTERED
		([YA_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_YARDA]
		PRIMARY KEY
		NONCLUSTERED
		([YA_CLAVE])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[YARDA] SET (LOCK_ESCALATION = TABLE)
GO
