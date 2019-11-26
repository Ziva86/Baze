SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TCAMBIO] (
		[TC_FECHA]       [datetime] NOT NULL,
		[TC_CANT]        [decimal](38, 6) NOT NULL,
		[TC_CANTDOF]     [decimal](38, 6) NULL,
		CONSTRAINT [PK_TCAMBIO]
		PRIMARY KEY
		NONCLUSTERED
		([TC_FECHA])
	ON [PRIMARY]
)
GO
CREATE NONCLUSTERED INDEX [IX_TCAMBIO]
	ON [dbo].[TCAMBIO] ([TC_CANT])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[TCAMBIO] SET (LOCK_ESCALATION = TABLE)
GO
