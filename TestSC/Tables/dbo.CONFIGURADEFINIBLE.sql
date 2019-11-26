SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIGURADEFINIBLE] (
		[EM_CODIGO]            [int] NOT NULL,
		[CFD_USADEFMA]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_DEFTXT1]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFTXT2]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFTXT3]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFBOL1]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFBOL2]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFBOL3]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFNO1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFNO2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFNO3]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFDATE1]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFDATE2]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_DEFDATE3]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_HISTDEFTXT1]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFTXT2]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFTXT3]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFBOL1]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFBOL2]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFBOL3]      [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFNO1]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFNO2]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFNO3]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFDATE1]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFDATE2]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_HISTDEFDATE3]     [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CFD_USADEFFI]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FI_DEFTXT1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FI_DEFTXT2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FI_DEFNO1]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FI_DEFNO2]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFFE]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FE_DEFTXT1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FE_DEFTXT2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FE_DEFNO1]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FE_DEFNO2]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFFID]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FID_DEFTXT1]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FID_DEFTXT2]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FID_DEFNO1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FID_DEFNO2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFFED]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FED_DEFTXT1]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FED_DEFTXT2]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FED_DEFNO1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FED_DEFNO2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFFIC]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FIC_DEFTXT]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FIC_DEFNO]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFPL]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[PL_DEFTXT1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PL_DEFTXT2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PL_DEFNO1]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PL_DEFNO2]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CFD_USADEFLE]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LE_DEFTXT1]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LE_DEFTXT2]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LE_DEFNO1]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LE_DEFNO2]            [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_CONFIGURADEFINIBLE]
		PRIMARY KEY
		NONCLUSTERED
		([EM_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFLE]
	DEFAULT ('N') FOR [CFD_USADEFLE]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFPL]
	DEFAULT ('N') FOR [CFD_USADEFPL]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFMA]
	DEFAULT ('N') FOR [CFD_USADEFMA]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFTXT1]
	DEFAULT ('N') FOR [CFD_HISTDEFTXT1]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFTXT2]
	DEFAULT ('N') FOR [CFD_HISTDEFTXT2]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFTXT3]
	DEFAULT ('N') FOR [CFD_HISTDEFTXT3]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFBOL1]
	DEFAULT ('N') FOR [CFD_HISTDEFBOL1]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFBOL2]
	DEFAULT ('N') FOR [CFD_HISTDEFBOL2]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFBOL3]
	DEFAULT ('N') FOR [CFD_HISTDEFBOL3]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFNO1]
	DEFAULT ('N') FOR [CFD_HISTDEFNO1]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFNO2]
	DEFAULT ('N') FOR [CFD_HISTDEFNO2]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFNO3]
	DEFAULT ('N') FOR [CFD_HISTDEFNO3]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFDATE1]
	DEFAULT ('N') FOR [CFD_HISTDEFDATE1]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFDATE2]
	DEFAULT ('N') FOR [CFD_HISTDEFDATE2]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_HISTDEFDATE3]
	DEFAULT ('N') FOR [CFD_HISTDEFDATE3]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFFI]
	DEFAULT ('N') FOR [CFD_USADEFFI]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFFE]
	DEFAULT ('N') FOR [CFD_USADEFFE]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFFID]
	DEFAULT ('N') FOR [CFD_USADEFFID]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFFED]
	DEFAULT ('N') FOR [CFD_USADEFFED]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_CFD_USADEFFIC]
	DEFAULT ('N') FOR [CFD_USADEFFIC]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE]
	ADD
	CONSTRAINT [DF_CONFIGURADEFINIBLE_FIC_DEFTXT]
	DEFAULT ('') FOR [FIC_DEFTXT]
GO
ALTER TABLE [dbo].[CONFIGURADEFINIBLE] SET (LOCK_ESCALATION = TABLE)
GO
