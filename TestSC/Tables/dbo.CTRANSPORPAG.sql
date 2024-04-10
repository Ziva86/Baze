SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTRANSPORPAG] (
		[CTP_CODIGO]       [int] NOT NULL,
		[CTP_FOLIO]        [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CT_CODIGO]        [int] NOT NULL,
		[CTP_FECHA]        [datetime] NOT NULL,
		[US_CODIGO]        [int] NULL,
		[CTP_TIP_CAM]      [decimal](38, 6) NOT NULL,
		[CTP_IVAPOR]       [decimal](38, 6) NOT NULL,
		[CTP_PAGADO]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CTP_FECHPAGO]     [decimal](38, 6) NULL,
		[CTP_DOCREF]       [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_CTRANSPORPAG]
		PRIMARY KEY
		CLUSTERED
		([CTP_FOLIO])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[CTRANSPORPAG]
	ADD
	CONSTRAINT [DF_CTRANSPORPAG_CTP_TIP_CAM]
	DEFAULT (1) FOR [CTP_TIP_CAM]
GO
ALTER TABLE [dbo].[CTRANSPORPAG]
	ADD
	CONSTRAINT [DF_CTRANSPORPAG_CTP_IVAPOR]
	DEFAULT (10) FOR [CTP_IVAPOR]
GO
ALTER TABLE [dbo].[CTRANSPORPAG]
	ADD
	CONSTRAINT [DF_CTRANSPORPAG_CTP_PAGADO]
	DEFAULT ('N') FOR [CTP_PAGADO]
GO
ALTER TABLE [dbo].[CTRANSPORPAG] SET (LOCK_ESCALATION = TABLE)
GO