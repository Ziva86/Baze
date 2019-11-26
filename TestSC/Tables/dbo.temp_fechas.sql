SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[temp_fechas] (
		[mac_codigo]        [int] NULL,
		[ma_perfin]         [datetime] NULL,
		[NEW_ma_perfin]     [datetime] NULL,
		[tco_codigo]        [int] NULL
)
GO
ALTER TABLE [dbo].[temp_fechas] SET (LOCK_ESCALATION = TABLE)
GO
