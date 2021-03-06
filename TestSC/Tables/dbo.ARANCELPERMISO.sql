SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARANCELPERMISO] (
		[ARP_CODIGO]      [int] IDENTITY(1, 1) NOT NULL,
		[AR_CODIGO]       [int] NOT NULL,
		[ARP_PERMISO]     [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_ARANCELPERMISO]
		UNIQUE
		NONCLUSTERED
		([ARP_CODIGO])
		ON [PRIMARY]
)
GO
CREATE CLUSTERED INDEX [IX_ARANCELPERMISO_1]
	ON [dbo].[ARANCELPERMISO] ([AR_CODIGO], [ARP_CODIGO])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARANCELPERMISO] SET (LOCK_ESCALATION = TABLE)
GO
