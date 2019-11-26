SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIPINST] (
		[SI_CODIGO]            [int] IDENTITY(1, 1) NOT NULL,
		[SI_FOLIO]             [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ES_POINT_ORI]         [int] NULL,
		[SI_FTZ_NO]            [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_PART_TRANS]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SI_CONTAIN]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SI_VAL_LIC]           [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_ECCN]              [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_DULY]              [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_AUT]               [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_CARRIER]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SI_OTHER_CA]          [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_DECLARE]           [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_RECEIPT]           [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_BL]                [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SI_SPECIAL]           [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PG_CODIGO]            [smallint] NULL,
		[SI_FEC_SHIP]          [datetime] NOT NULL,
		[SI_FEC_EXP]           [datetime] NOT NULL,
		[SI_CERRADO]           [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SI_CONSECSHIPPER]     [int] NULL,
		[SI_HARZARDOUS]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SI_ROUTEDEXPTRAN]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [IX_SHIPINST]
		UNIQUE
		NONCLUSTERED
		([SI_CODIGO])
		ON [PRIMARY],
		CONSTRAINT [PK_SHIPINST]
		PRIMARY KEY
		NONCLUSTERED
		([SI_FOLIO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_PART_TRANS]
	DEFAULT ('X') FOR [SI_PART_TRANS]
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_CONTAIN]
	DEFAULT ('X') FOR [SI_CONTAIN]
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_CARRIER]
	DEFAULT ('X') FOR [SI_CARRIER]
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_CERRADO]
	DEFAULT ('N') FOR [SI_CERRADO]
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_HARZARDOUS]
	DEFAULT ('N') FOR [SI_HARZARDOUS]
GO
ALTER TABLE [dbo].[SHIPINST]
	ADD
	CONSTRAINT [DF_SHIPINST_SI_ROUTEDEXPTRAN]
	DEFAULT ('N') FOR [SI_ROUTEDEXPTRAN]
GO
ALTER TABLE [dbo].[SHIPINST] SET (LOCK_ESCALATION = TABLE)
GO
