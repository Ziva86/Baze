SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[numericv] (
		[jedan]      [int] NULL,
		[dva]        [decimal](2, 2) NULL,
		[tri]        [bigint] NULL,
		[cetiri]     [real] NULL,
		[pet]        [numeric](18, 0) NULL,
		[sest]       [smallint] NULL
)
GO
ALTER TABLE [dbo].[numericv] SET (LOCK_ESCALATION = TABLE)
GO
