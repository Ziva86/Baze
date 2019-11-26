SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table30] (
		[ZAP_ID]               [int] NULL,
		[DATUM_RODJENJA]       [date] NULL,
		[PLATA]                [int] NULL,
		[CREDITNA_CARTICA]     [int] NULL,
		[IME_ZAP]              [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Table30] SET (LOCK_ESCALATION = TABLE)
GO
