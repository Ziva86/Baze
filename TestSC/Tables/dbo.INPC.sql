SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INPC] (
		[IN_YEAR]       [smallint] NOT NULL,
		[IN_MES]        [smallint] NOT NULL,
		[IN_CANT]       [decimal](38, 6) NOT NULL,
		[IN_FECINI]     [datetime] NULL,
		CONSTRAINT [PK_INPC]
		PRIMARY KEY
		NONCLUSTERED
		([IN_YEAR], [IN_MES])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[INPC] SET (LOCK_ESCALATION = TABLE)
GO
