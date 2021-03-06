SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OMISIONENTIDADES] (
		[OM_TIPO]        [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[TF_CODIGO]      [smallint] NOT NULL,
		[PR_CODIGO]      [int] NULL,
		[CL_PROD]        [int] NULL,
		[CL_DESTINI]     [int] NULL,
		[CL_DESTFIN]     [int] NULL,
		[CL_COMP]        [int] NULL,
		[CL_COMPFIN]     [int] NULL,
		[CL_VEND]        [int] NULL,
		[CL_EXP]         [int] NULL,
		[CL_EXPFIN]      [int] NULL,
		[CL_IMP]         [int] NULL,
		CONSTRAINT [PK_OMISIONENTIDADES]
		PRIMARY KEY
		CLUSTERED
		([OM_TIPO], [TF_CODIGO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[OMISIONENTIDADES] SET (LOCK_ESCALATION = TABLE)
GO
