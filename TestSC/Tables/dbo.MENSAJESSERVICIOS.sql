SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MENSAJESSERVICIOS] (
		[MS_ID]                        [bigint] IDENTITY(1, 1) NOT NULL,
		[MS_TIPOSERVICIO]              [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MS_MENSAJE]                   [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MS_FECHACREACION]             [datetime] NOT NULL,
		[MS_POSITIVO]                  [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MS_FECHAULTIMAOCURRENCIA]     [datetime] NOT NULL,
		[MS_MOSTRARNOTIFICACION]       [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[US_ID]                        [int] NULL,
		CONSTRAINT [IX_MENSAJESSERVICIOS]
		UNIQUE
		NONCLUSTERED
		([MS_ID])
		ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[MENSAJESSERVICIOS]
	ADD
	CONSTRAINT [DF_MENSAJESSERVICIOS_MS_FECHACREACION]
	DEFAULT (getdate()) FOR [MS_FECHACREACION]
GO
ALTER TABLE [dbo].[MENSAJESSERVICIOS]
	ADD
	CONSTRAINT [DF_MENSAJESSERVICIOS_MS_POSITIVO]
	DEFAULT ('N') FOR [MS_POSITIVO]
GO
ALTER TABLE [dbo].[MENSAJESSERVICIOS]
	ADD
	CONSTRAINT [DF_MENSAJESSERVICIOS_MS_FECHAULTIMAOCURRENCIA]
	DEFAULT (getdate()) FOR [MS_FECHAULTIMAOCURRENCIA]
GO
ALTER TABLE [dbo].[MENSAJESSERVICIOS]
	ADD
	CONSTRAINT [DF_MENSAJESSERVICIOS_MS_MOSTRARNOTIFICACION]
	DEFAULT ('S') FOR [MS_MOSTRARNOTIFICACION]
GO
ALTER TABLE [dbo].[MENSAJESSERVICIOS] SET (LOCK_ESCALATION = TABLE)
GO
