SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempRangoTlc_Original] (
		[MA_NOPARTE]         [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MA_NOPARTEAUX]      [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[NFT_TRACEVALUE]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[TempRangoTlc_Original]
	ADD
	CONSTRAINT [DF_TempRangoTlc_Original_MA_NOPARTEAUX]
	DEFAULT ('') FOR [MA_NOPARTEAUX]
GO
ALTER TABLE [dbo].[TempRangoTlc_Original]
	ADD
	CONSTRAINT [DF_TempRangoTlc_Original_NFT_TRACEVALUE]
	DEFAULT ('N') FOR [NFT_TRACEVALUE]
GO
ALTER TABLE [dbo].[TempRangoTlc_Original] SET (LOCK_ESCALATION = TABLE)
GO
