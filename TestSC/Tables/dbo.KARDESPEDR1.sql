SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KARDESPEDR1] (
		[KAP_CODIGO]              [int] NOT NULL,
		[KAP_INDICED_PEDORIG]     [int] NULL,
		[KAP_INDICED_PEDR1]       [int] NULL,
		[PI_CODIGOORIG]           [int] NULL,
		[PI_CODIGOR1]             [int] NULL,
		CONSTRAINT [PK_KARDESPEDR1]
		PRIMARY KEY
		CLUSTERED
		([KAP_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[KARDESPEDR1] SET (LOCK_ESCALATION = TABLE)
GO
